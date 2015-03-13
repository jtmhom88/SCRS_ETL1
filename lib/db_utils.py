#!/usr/bin/python
#
# coding: utf-8 

"""
These are database manipulation utilities.
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import json
from pprint import pprint
import mysql.connector

########################################################################################
# Function returns True if file is not found in the sys_file_control table
########################################################################################
# def next_etl_run_id(connection, configs):
#   id = -1
#   cursor = connection.cursor()
#   query = "SELECT %s.get_next_etl_run_id()" % str(configs['omd'])
#   cursor.execute(query)
#   rows = cursor.fetchone()
#   #print rows[0]
#   cursor.close()
#   if rows[0] > 1:
#     id = rows[0]
#   return id
#   pass

def insert_sys_etl_control_log(connection, configs, fileid, calling_program, ft_id, ft_subfolder, extract_date ):
  # Function inserts a new entry into sys_etl_control_log
  etlid = -1
  args = (fileid, ft_id, calling_program, ft_subfolder, extract_date, etlid)
  #print "Args for insert_sys_etl_control_log..."
  #print args
  proc =  configs['omd'] + '.insert_sys_etl_control_log'
  cursor = connection.cursor()
  result = cursor.callproc(str(proc), args)
  #print result
  etlid = result[5]
  connection.commit()
  #print "etlid ..."
  #print etlid
  return etlid
  pass

def update_sys_etl_control_log(connection, configs, etl_run_id, etl_ods_rows ):
  cursor=connection.cursor()
  table = str(configs['omd']) + ".sys_etl_control_log"
  status = "%s completed ODS insert with %s rows" % (configs['calling_program'], etl_ods_rows)
  print "status...%s" % status
  query="""
  UPDATE %s
  SET etl_ods_status=1, etl_ods_status_desc= "%s", etl_ods_rows = %s
  WHERE etl_run_id = %s
  """ % (table, status, etl_ods_rows, etl_run_id)
  print query
  cursor.execute(query)
  connection.commit()
  cursor.close()
  pass

# def insert_file(self, args):
#   # Function inserts the file into the sys_file_control table and returns the new fileid
#   fileid = -1
#   proc =  self.omd + '.insert_sys_file'
#   result = self.cursor.callproc(str(proc), args)
#   print result
#   fileid = result[1]
#   self.connection.commit()
#   return fileid
#   pass


