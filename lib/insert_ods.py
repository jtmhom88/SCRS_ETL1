#!/usr/bin/python
#
# coding: utf-8 

"""
This program has utilities for inserting data into ODS
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import sys
import os
#lib_path = os.path.abspath('.\lib') # WINDOWS
lib_path = os.path.abspath('./lib') # LINUX
sys.path.append(lib_path)
import re

def cms_cp_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  print "cms_cp_incr_insert_ods using fileid %s" % fileid
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_cp_raw_to_ods_wrapper'
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_cp_insert_ods(connection, fileid, configs):
  print "cms_cp_insert_ods using fileid %s" % fileid
  rows_inserted = cms_cp_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cms_history_req_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_history_req_raw_to_ods_wrapper'
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_history_req_insert_ods(connection, fileid, configs):
  rows_inserted = cms_history_req_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cms_req_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_req_raw_to_ods_wrapper'
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_req_insert_ods(connection, fileid, configs):
  rows_inserted = cms_req_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cms_agg_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_agg_raw_to_ods_wrapper'
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_agg_insert_ods(connection, fileid, configs):
  rows_inserted = cms_agg_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cms_sc_price_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_sc_price_raw_to_ods_wrapper'
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_sc_price_insert_ods(connection, fileid, configs):
  rows_inserted = cms_sc_price_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cms_sc_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_sc_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_sc_insert_ods(connection, fileid, configs):
  rows_inserted = cms_sc_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cms_history_sc_incr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cms_history_sc_raw_to_ods_wrapper'
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def cms_history_sc_insert_ods(connection, fileid, configs):
  rows_inserted = cms_history_sc_incr_insert_ods(connection, fileid, configs)
  return rows_inserted
  pass
def cdr_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.cdr_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass
def omg_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.omg_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def tlg_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.tlg_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def eag_sms_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.eag_sms_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def eag_mms_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.eag_mms_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def ngeag_sms_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.ngeag_sms_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def ngeag_mms_insert_ods(connection, fileid, configs):
  return False
  pass


def csca_approved_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.csca_approved_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def csca_pending_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.csca_pending_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def apigee_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.apigee_raw_to_ods_wrapper'
  print proc
  result = cursor.callproc(str(proc), args)
  print result
  #input = raw_input("Paused>>Check results for rows inserted")
  rows_inserted = result[1]
  print "Rows_inserted %d" % rows_inserted
  #input = raw_input("Paused>>Check rows_inserted")
  connection.commit()
  cursor.close()
  return rows_inserted
  pass

def fte_insert_ods(connection, fileid, configs):
  # Function inserts the file into the ods
  cursor = connection.cursor()
  rows_inserted = 0
  args =  (fileid,rows_inserted)
  proc = configs['omd'] + '.insert_fte_raw_to_ods_wrapper_proc'    
  result = cursor.callproc(str(proc), args)
  ##input = raw_input("Paused>>Check results for rows inserted")
  print result
  rows_inserted = result[1]
  connection.commit()
  cursor.close()
  return rows_inserted
  pass