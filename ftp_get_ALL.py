#!/usr/bin/python

#
# Program to get FTP downloads of data for SCRS system 
#
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import sys
import os
sys.path.append('/opt/app/workload/lib/python')
import mysql.connector
import ftplib
import inspect
import traceback
from datetime import datetime
from datetime import date
#configs_path = os.path.abspath('.\configs') # WIN
configs_path = os.path.abspath('./configs') # LINUX
sys.path.append(configs_path)
from configs.ftp_configs import *
import json
import re
import mysql.connector

##################################################
### Set up the configs
##################################################
json_data=open('./configs/configs.json')
CONFIGS_1 = json.load(json_data)
json_data.close()
CONFIGS = {}
DATASOURCES = []

# Instantiate Mysql Connection
conn2 = mysql.connector.connect(**CONFIGS_1['ito_2']) # Choose connection config set
cursor2 = conn2.cursor()


##################################################
### Methods to be Used
##################################################
def gettext(ftp, filename, outfile=None):
  # fetch a text file
  if outfile is None:
      outfile = sys.stdout
  # use a lambda to add newlines to the lines read from the server
  ftp.retrlines("RETR " + filename, lambda s, w=outfile.write: w(s+"\n"))

def getbinary(ftp, filename, outfile=None):
  # fetch a binary file
  if outfile is None:
      outfile = sys.stdout
  ftp.retrbinary("RETR " + filename, outfile.write)

def rename(ftp, from_filename, to_filename):
  # move file from to
  ftp.rename(from_filename, to_filename)

def get_extract_dates(cursor, datasource):
  # returns a SET containing the extract_dates
  if datasource == 'eag':
    mydatasource = 'eag_sms'
  elif datasource == 'csca':
    mydatasource = 'csca_approved'
  elif datasource == 'cms_incr':
    mydatasource = 'cms_sc'
  else:
    mydatasource = datasource
  query = "SELECT extract_date from scrs_omd.sys_file_control where ft_name = %r and ods_done>0 order by extract_date" % mydatasource
  dates = set([])
  cursor.execute(query)
  for (extract_date) in cursor:
          yyyymmdd = extract_date[0].strftime("%Y%m%d")
          dates.add(yyyymmdd)
          yymmdd = extract_date[0].strftime("%y%m%d")
          dates.add(yymmdd)
          #print extract_date
  #print dates
  #print ('20130824' in dates)
  return dates
  pass

def get_yyyymmdd(filename):
  # return the match or None
  regex = re.compile("(\d{8})")
  r = regex.search(filename)
  if (r):
    return r.groups()[0]
  else:
    return None
  pass

def get_yymmdd(filename):
  # return the match or None
  regex = re.compile("(\d{6})")
  r = regex.search(filename)
  if (r):
    return r.groups()[0]
  else:
    return None
  pass
##################################################
### MAIN
##################################################
def main():
  try:
    print 'Started run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
    usage = 'USAGE args: (datasource)'
    print usage
    totalargs = len(sys.argv)-1
    cmdargs = sys.argv
    CONFIGS['calling_program'] = str(sys.argv[0])
    #print ("The total numbers of args passed to the script: %d " % totalargs)
    #print "Args list: %s " % str(cmdargs)

    ### Process Args
    if totalargs < 1:
      msg = ">>>ERROR: you need to enter one arg that is a datasource!"
      raise RuntimeError(msg)
    else:
      DS_NAME = cmdargs[1]
      print "DS_NAME %s" % DS_NAME
      for ds in datasources.iterkeys():
        DATASOURCES.append(ds)
      #print repr(DATASOURCES)
    if DS_NAME not in DATASOURCES:
      msg = ">>>ERROR: unknown datasource %s" % DS_NAME
      raise RuntimeError(msg)
    
    ### MAIN ###
    ftpserver = datasources[DS_NAME]["dropbox"]
    url = dropbox[ftpserver]["url"]
    user = dropbox[ftpserver]["user"]
    anshbng = dropbox[ftpserver]["anshbng"]
    myport = dropbox[ftpserver]["port"]
    ftpdir = datasources[DS_NAME]["ftpdir"]
    downloadeddir = datasources[DS_NAME]["downloadeddir"]
    localdir = datasources[DS_NAME]["localdir"]
    print "Connecting to ...url %s" % url
    #print "user %s pwd %s" % (user, anshbng)
    #print "ftpdir %s" % ftpdir
    # Connect to FTP Server
    ftp = ftplib.FTP()
    ftp.connect(url,port=myport)
    ftp.login(user, anshbng)
    ftp.cwd(ftpdir)
    # Get list of files in the Directory
    files = ftp.nlst()

    # Get all extract dates in the system
    extdates = get_extract_dates(cursor2, DS_NAME)
    print extdates
    for file in files:
      pattern = CONFIGS_1[DS_NAME]['pattern']
      print "pattern %s" % pattern
      regex = re.compile(pattern)
      if regex.match(file):
        yymmdd = get_yymmdd(file)
        yyyymmdd = get_yyyymmdd(file)
        print "yymmdd %s yyyymmdd %s" % (yymmdd,yyyymmdd)
        # Only process if extract_date is not known
        if (not (yyyymmdd in extdates)) and (not (yymmdd in extdates)):
          print "Getting file...%s" % file
          tgtfile = localdir+file
          print "Writing to ...%s" % tgtfile
          outfile = open(tgtfile, "wb")
          getbinary(ftp, file, outfile)
          outfile.close()
          
          # Move to downloaded folder 
          #if (not DS_NAME == 'fte') and (not DS_NAME == 'apigee'):
          if DS_NAME == 'cms_incr':
            rename(ftp, ftpdir+file,downloadeddir+file)
        else:
          #print "File extract date already processed, Skipping %s" % file
          pass
      else:
        print "No match. Skipping %s..." % file

  except ftplib.error_perm:
    err = sys.exc_info()[0]
    print ">>>FTP Error: %s" % err
    sys.stderr.write('%s exits with ERROR. Nothing done. %s \n' % (str(sys.argv[0]), str(err) ))
    traceback.print_exc()    
  except Exception, e:
    err = sys.exc_info()[0]
    print "General Error: %s" % err
    sys.stderr.write('%s exits with ERROR. Nothing done. %s \n' % (str(sys.argv[0]), str(err) ))
    traceback.print_exc()
  else:
      print "Nothing done"
      pass
  finally:
    print 'Exiting run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
    cursor2.close()
    conn2.close()
    exit()
    pass

### MAIN
if __name__ == '__main__':
    main()
