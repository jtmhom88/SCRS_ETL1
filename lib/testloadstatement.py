#!/usr/bin/python

import re
from datetime import date
from datetime import datetime

execute_statement = '''
LOAD DATA
INFILE '%(file_path)s'
INTO TABLE %(ods_stg)s.cms_history_req_load_raw
FIELDS TERMINATED BY '~'
LINES TERMINATED BY '\\n' 
IGNORE 1 LINES
(req_id,
req_status_history_id,
Transaction_Datetime,
old_req_Status,
new_req_Status,
Modified_By,
Modified_Datetime)
SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
'''

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

def file_object(file_name):
  universal_pattern = '^([^0-9].+?)?((20\d{6})|(\d{6})|(20\d{8}))([^0-9].+)'
  pattern = re.compile(universal_pattern)
  match = pattern.match(file_name)
  if match == None:
    return False
  else:
    prefix = match.group(1)
    if prefix == None:
      prefix = ''
    date_part = match.group(2)
    suffix = match.group(6)
    suffix = re.sub('[^\.]+(\..+)','\1',suffix)
    if len(date_part) == 6:
      extended_date_part = '20' + date_part + '00'
      full_date_part = '20' + date_part
      py_template = prefix + '%(yy)s%(month)s%(day)s' + suffix
    elif len(date_part) == 8:
      extended_date_part = date_part + '00'
      full_date_part = date_part
      py_template = prefix + '%(year)s%(month)s%(day)s' + suffix
    elif len(date_part) == 10:
      extended_date_part = date_part
      full_date_part = date_part[0:8]
      py_template = prefix + '%(year)s%(month)s%(day)s*' + suffix
    else:
      return None

    return dict(
      file_name=file_name,
      date_part=date_part,
      full_date_part=full_date_part,
      yy = extended_date_part[2:4],
      year = extended_date_part[0:4],
      month = extended_date_part[4:6],
      day = extended_date_part[6:8],
      hour = extended_date_part[8:10],
      py_template = py_template,
      file_name_template = prefix + '{date_part}' + suffix,
      file_id_tag = extended_date_part[2:4] + extended_date_part[4:6] + extended_date_part[6:8] + extended_date_part[8:10]
      #file_id = '%(ds_id)s' + yy + month + day + hour # TODO , this does NOT work. 
      )


def parametrize_load_statement(execute_statement, fixed_file_path,file_id,etl_run_id,configs):

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

configs = {'ods_stg':'scrs_ods_stg'}
filepath = "C:\\history_campaign_incr_2013082723.csv"
file_id = 111
etl_run_id = 999

query = parametrize_load_statement(execute_statement, filepath,file_id,etl_run_id, configs)
print query