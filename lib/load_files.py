#!/usr/bin/python
#
# coding: utf-8 

"""
This program has utilities for laoding files
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import sys
import os
#lib_path = os.path.abspath('./lib') # LINUX
#sys.path.append(lib_path)
#from lib.file_name_parser import file_object
from file_name_parser import file_object
import re
from datetime import date
from datetime import datetime

def date_dict(date_date):
  year, month, day = str(date_date).split('-')
  yy = year[2:4]
  date_param_dict = {}
  date_param_dict['extract_date'] = str(date_date)
  date_param_dict['year'] = year
  date_param_dict['month'] = month
  date_param_dict['day'] = day
  date_param_dict['yy'] = yy
  return date_param_dict

def update_load_sys_file_control(connection, configs, file_id, rows):
  cursor=connection.cursor()
  table = str(configs['omd']) + ".sys_file_control"
  query="""
  UPDATE %s
  SET raw_table_rows=%s, load_done=1
  WHERE file_id = %s
  """ % (table,rows,file_id)
  print query
  cursor.execute(query)
  connection.commit()
  cursor.close()
  pass

def get_load_raw_rows(connection, configs, DS_NAME, file_id):
  cursor=connection.cursor()
  table = str(configs['ods_stg']) + "." + DS_NAME + "_load_raw"
  table = table.replace("_incr","")
  query="""
  SELECT COUNT(*) FROM %s
  WHERE file_id = %s
  """ % (table,file_id)
  print query
  cursor.execute(query)
  result = cursor.fetchone()
  rows = result[0]
  #print "get_load_raw_rows rows %s" % repr(result)
  print "get_load_raw_rows rows %d" % rows
  cursor.close()
  return rows
  pass

def parametrize_load_statement(execute_statement, fixed_file_path,file_id,etl_run_id,configs):
  # JTH
  # Takes a load statement template and parametrizes it
  # Example
  # execute_statement = '''
  # LOAD DATA
  # INFILE '%(file_path)s'
  # INTO TABLE %(ods_stg)s.cms_history_req_load_raw
  # FIELDS TERMINATED BY '~'
  # LINES TERMINATED BY '\\n' 
  # IGNORE 1 LINES
  # (req_id,
  # req_status_history_id,
  # Transaction_Datetime,
  # old_req_Status,
  # new_req_Status,
  # Modified_By,
  # Modified_Datetime)
  # SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
  # '''

  params = {}
  params['file_path'] = fixed_file_path
  params['ods_stg'] = configs['ods_stg']
  params['etl_run_id'] = etl_run_id
  params['file_id'] = file_id
  params['extract_date'] = '1999-12-31'

  fdict = file_object(fixed_file_path)
  print fdict
  year=int(fdict['year'])
  month=int(fdict['month'])
  day=int(fdict['day'])
  date_params = date_dict(date(year,month,day))
  params['extract_date'] = date_params['extract_date']

  full_execute_statement = execute_statement % params

  #print full_execute_statement
  return full_execute_statement

def fte_load_file(conn, load_file_name, file_id, configs):

  datadir = configs['fixdir']

  load_stmt = """LOAD DATA INFILE '%(infile_path)s'
  INTO TABLE %(ods_stg_db)s.%(raw_load_table)s
  %(delimiter_set_str)s
  IGNORE %(ignore_lines)d LINES
  (
    %(load_columns)s
  )
  SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = '%(extract_date)s';
  """

  get_stmt = """SELECT %(columns)s
  FROM %(omd_db)s.%(table)s
  WHERE ds_name = %(ds_name)r AND start_date <= %(extract_date)r
  ORDER BY start_date DESC;
  """

  param_list = ['raw_load_table','load_file_name','delimiter_set_str','ignore_lines','load_columns']
  omd = configs['omd']
  params = {'columns':','.join(param_list),'omd_db': omd,'table':'load_raw_ds_params','ds_name':'fte','extract_date':'2013-08-31'}

  c=conn.cursor()
  query="SET GLOBAL group_concat_max_len=100000"
  c.execute(query)
  c.close()
  
  c=conn.cursor()
  query = (get_stmt % params)
  print "query..."
  print query
  c.execute(query)
  all_results = c.fetchall()
  c.close()

  c=conn.cursor()
  r=dict(zip(param_list,all_results[0]))
  r['file_id'] = file_id #'1%(yy)s%(month)s%(day)s00'
  r['etl_run_id'] = '1%(yy)s%(month)s%(day)s00'
  r['ods_stg_db'] = configs['ods_stg']
  r['extract_date'] = '%(extract_date)s'
  r['infile_path'] = load_file_name

  load_template = load_stmt % r

  print "load_template..."
  print load_template

  fdict = file_object(load_file_name)
  print fdict
  year=int(fdict['year'])
  month=int(fdict['month'])
  day=int(fdict['day'])
  date_params = date_dict(date(year,month,day))
  print 'Loading: ' + r['load_file_name'] % date_params 
  query = (load_template % date_params)
  print query
  c.execute(query)

  query = "select ROW_COUNT()"
  c.execute(query)
  rows = c.fetchone()
  #input = raw_input("Paused>>HOW ROWS LOADED?")
  print rows
  c.close()

  return rows[0]