#!/usr/bin/python
#
# coding: utf-8 

"""
This program interrogates a folder and if there are new files updates the database table.
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import sys
import os
lib_path = os.path.abspath('.\lib') # WINDOWS
sys.path.append(lib_path)
from lib.dict_cursor import DictCursor
from lib.file_name_parser import file_object
from lib.db_utils import *
import json
from pprint import pprint
import mysql.connector
import re


class InterrogateRaw(object):
  """docstring for InterrogateRaw"""
  def __init__(self, connection, configs, pattern, template ):
    self.connection = connection
    self.configs = configs
    self.rawdir = configs['rawdir']
    self.fixdir = configs['fixdir']
    self.separ = configs['separ']
    self.filename_list = []
    self.fileid_list = []
    self.fixedfilename_list = []
    self.etl_run_id_list = []
    self.pattern = pattern
    self.template = template
    self.cursor = self.connection.cursor()
    self.omd = configs['omd']

  def file_doesnt_exist(self, filename):
    # Function returns True if file is not found in the sys_file_control table
    count = 0
    args = (filename, count)
    proc = self.omd + '.file_doesnt_exist'
    print proc
    #input = raw_input("Paused>>")
    result = self.cursor.callproc(str(proc), args)
    print result
    ct = int(result[1])
    if ct < 1:
      return True
    else:
      return False
    pass

  def insert_file(self, args):
    # Function inserts the file into the sys_file_control table and returns the new fileid
    fileid = -1
    # SQL = "CALL scrs_omd.testing(-999999);"
    # for result in cursor.execute(SQL,multi = True):
    #   for result in cursor.fetchone():
    #     print result
    #     if fileid<0:
    #       fileid = result[0]
    #   pass
    #args = (-99999, fileid)
    proc =  self.omd + '.insert_sys_file'
    result = self.cursor.callproc(str(proc), args)
    print result
    fileid = result[1]
    self.connection.commit()
    return fileid
    pass

  def orig_to_fixed(self, match_obj):
    regex = re.compile("[0-9]{2}")
    yy1 = match_obj.group(2)
    yy2 = match_obj.group(3)
    mm = match_obj.group(4)
    dd = match_obj.group(5)
    # Look for yyyymmdd
    if (regex.match(yy1) and regex.match(yy2) and regex.match(mm) and regex.match(dd) ):
      params = dict(
        year = yy1 + yy2,
        month = mm,
        day = dd
      )
    # Look for yymmdd
    elif(regex.match(yy1) and regex.match(yy2) and regex.match(mm)):
      if (yy1 == '20'): # CDR
        params = dict(
          year = yy1 + yy2 ,
          month = mm,
          day = '01'
        )
      else:
        params = dict(
          year = '20' + yy1 ,
          month = yy2,
          day = mm
        )
    # no good date
    else:
      msg = "ERROR: orig_to_fixed Cannot find date in filename"
      raise RuntimeError(msg)
    return self.template % params


  def make_path_pair(self, orig_path_base,fixed_path_base,orig_file_name):
    prog = re.compile(self.pattern)
    print "Pattern ... %s" % self.pattern
    print "orig_file_name %s" % orig_file_name
    match = prog.match(orig_file_name)
    if match != None:
      orig_file_path = os.path.join(orig_path_base,orig_file_name)
      fixed_file_name = re.sub(self.pattern,self.orig_to_fixed,orig_file_name)
      fixed_file_path = os.path.join(fixed_path_base,fixed_file_name)
      #return (orig_file_path,fixed_file_path)
      return (orig_path_base, orig_file_name, fixed_path_base ,fixed_file_name)
    else:
      return None

  def main(self):
    # interrogate the raw folder
#    for path, subdirs, files in os.walk(self.rawdir):
    files = [f for f in os.listdir(self.rawdir) ]
    print "Rawdir...%s" % self.rawdir
    print "Files...%s" % repr(files)
    for name in files:
      path = self.rawdir
      processfile = os.path.join(path, name)
      print processfile
      tf = self.file_doesnt_exist(name)
      if tf: # if file doesnt exist yet
        print "Processing %s" % name
        print "Rawdir %s " % self.rawdir
        print "Fixdir %s " % self.fixdir 
        print "Path is %s" % path
        print "Name is %s" % name
        #input = raw_input("Paused>>Check the path and name")

        # Get the ETL_RUN_ID
        # For every file, you need to insert into 
        # sys_file_control and sys_etl_control_log
        # the two keys needed are etl_run_id and file_id
        #input = raw_input("Paused>>Get DSID")
        #etl_run_id = next_etl_run_id(self.connection, self.configs)
        #print "etl_run_id is %s" % etl_run_id
        tupl = self.make_path_pair(path,self.fixdir,name)
        if tupl is None: # These are not data files
          print "NOT Processing ... %s/%s" % (path,name)
          continue
        print "tupl..."
        print tupl
        ct = 0

        # Set up file dictionary to pull out relevant parts of file
        filedict = file_object(processfile)
        #input = raw_input("Paused>>Get DSID")

        # Get dsid
        #print repr(self.configs)
        #print str(self.configs['DS_NAME'])
        DS_NAME = str(self.configs['DS_NAME'])
        #print self.configs[DS_NAME]
        #print self.configs[DS_NAME]['dsid']
        dsid = self.configs[DS_NAME]['dsid']

        # Get the fileid
        fid =  str(dsid) + str(filedict['file_id_tag']) # FTE JTH TODO
        ifid = int(fid)
        #print ifid
        #print etl_run_id
        #print tupl
        #print ct

        # Get extract date
        #input = raw_input("Paused>>Get extract_date")
        extract_date = str(filedict['year']) + '-' + str(filedict['month']) + '-' + str(filedict['day'])
        print extract_date
        #input = raw_input("Paused>>Get extract_date")

        # Set up insert into sys_etl_control_log JTH
        etl_run_id = insert_sys_etl_control_log(self.connection, self.configs, ifid, self.configs['calling_program'], dsid, self.configs['DS_NAME'], extract_date )
        print "This etl_run_id"
        print  etl_run_id
        #input = raw_input("Paused>>insert_sys_etl_control_log")
        

        # Set up args for the insert_sys_file
        args = (ifid, dsid, DS_NAME, extract_date, etl_run_id, ) + tupl + (ct,)
        fixname = tupl[2] + self.separ + tupl[3]
        fname = tupl[0] + self.separ + tupl[1]
        #print args
        #print fixname
        #print fname
        #input = raw_input("Paused>>sys_file_control insert")
        # Insert this new file into the sys_etl_control_log
        #CALL insert_sys_file(-999, 'FTE','1999-12-31',-666, "rawpath1", "raw1", "fixpath1", "fix1", @rows) ;
        print "ARGS... %s" % repr(args)
        result = self.insert_file(args)
        print result

        if result < 0:
          msg = "ERROR: insert_file tried to insert file already there %s." % name
          raise RuntimeError(msg)
        else:
          self.filename_list.append(fname)
          self.fileid_list.append(fid)
          self.fixedfilename_list.append(fixname)
          self.etl_run_id_list.append(etl_run_id)
          #print self.filename_list
          #print self.fileid_list
          #print self.fixedfilename_list
          print self.etl_run_id_list
      else:  # File was previously inserted
        print "File has already been procssed, Check sys_file_control!"
        print processfile
        pass
    if len(self.filename_list) < 1:
      print "InterrogateRaw: No files inserted"
    else:
      print "Inserted files..."
      print self.filename_list
      print "Done inserting files into sys_file_control"
