#!/usr/bin/python

# Regular Modules
import sys
import os
sys.path.append('/opt/app/workload/lib/python')

import mysql.connector
import json
### Set up the configs
json_data=open('./configs/configs.json')
CONFIGS = json.load(json_data)
json_data.close()

# Instantiate cursor dict
conn = mysql.connector.connect(**CONFIGS['ito_2']) # Choose connection config set
cursor = conn.cursor()

# Function to call scrs_util.truncate_scrs_edw_stg();
def truncate_scrs_cms_edw_stg(cursor):
  args = ()
  proc = 'scrs_edw_stg.truncate_scrs_cms_edw_stg'
  print proc
  result = cursor.callproc(str(proc), args)
  return str(result)

print truncate_scrs_cms_edw_stg(cursor)
exit