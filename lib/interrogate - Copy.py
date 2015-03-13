#!/usr/bin/python
#
# coding: utf-8 

"""
This program interrogates a folder and if there are new files updates the database table.
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import sys
import os
lib_path = os.path.abspath('..\lib')
sys.path.append(lib_path)
from lib.dict_cursor import DictCursor
import json
from pprint import pprint
import mysql.connector
import re


class InterrogateRaw(object):
  """docstring for InterrogateRaw"""
  def __init__(self, connection, rawdir, filename_list, fileid_list, pattern, template ):
    self.connection = connection
    self.rawdir = rawdir
    self.filename_list = filename_list
    self.fileid_list = fileid_list
    self.pattern = pattern
    self.template = template

  def file_doesnt_exist(filename, connection):
    # Function returns True if file is not found in the sys_file_control table
    count = 0
    args = (filename, count)
    result = cursor.callproc('scrs_omd.file_doesnt_exist', args)
    print result
    ct = int(result[1])
    if ct < 1:
      return True
    else:
      return False
    pass

  def insert_file(args, connection):
    # Function inserts the file into the sys_file_control table and returns the new fileid
    fileid = -1
    cursor = connection.cursor()

    # SQL = "CALL scrs_omd.testing(-999999);"
    # for result in cursor.execute(SQL,multi = True):
    #   for result in cursor.fetchone():
    #     print result
    #     if fileid<0:
    #       fileid = result[0]
    #   pass
    #args = (-99999, fileid)
    result = cursor.callproc('scrs_omd.insert_sys_file', args)
    print result
    fileid = result[1]
    connection.commit()
    return fileid
    pass

  def orig_to_fixed(match_obj):
    params = dict(
      year = match_obj.group(2) + match_obj.group(3),
      month = match_obj.group(4),
      day = match_obj.group(5)
    )
    return self.template % params


  def make_path_pair(pattern,orig_path_base,fixed_path_base,orig_file_name):
    match = prog.match(orig_file_name)
    if match != None:
      orig_file_path = os.path.join(orig_path_base,orig_file_name)
      fixed_file_name = re.sub(pattern,orig_to_fixed,orig_file_name)
      fixed_file_path = os.path.join(fixed_path_base,fixed_file_name)
      #return (orig_file_path,fixed_file_path)
      return (orig_path_base, orig_file_name, fixed_path_base ,fixed_file_name)
    else:
      return None

  def mainloop():
    try:
      # interrogate the raw folder
      for path, subdirs, files in os.walk(self.rawdir):
        for name in files:
          processfile = os.path.join(path, name)
          print processfile
          tf = file_doesnt_exist(name, conn)
          if tf: # if file doesnt exist yet
            print "Processing %s" % name
            print path
            print name
            tupl = make_path_pair(fte_pattern,path,fixdir,name)
            print tupl
            ct = 0
            args = tupl + (ct,)
            # Insert this new file into the sys_control_log
            result = insert_file(args, conn)
            print result
      pass
    except Exception, e:
      raise
    else:
      pass
    finally:
      return True
      pass
    pass