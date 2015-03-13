#!/usr/bin/python
#
# coding: utf-8 
#
"""
This program interrogates a folder and if there are new files updates the database table.
The process goes from raw file to updating the ODS tables.
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

########################################################################
import sys
import os
sys.path.append('/opt/app/workload/lib/python')
import mysql.connector
#lib_path = os.path.abspath('..\lib') # WINDOWS
lib_path = os.path.abspath('./lib') # LINUX
sys.path.append(lib_path)
from lib.dict_cursor import DictCursor
from lib.interrogate import InterrogateRaw
from lib.file_name_parser import file_object
from lib.db_utils import *
from lib.fix_files import *
from lib.load_files import *
from lib.insert_ods import insert_fte_ods
import json
from pprint import pprint
import mysql.connector
import re
from datetime import datetime
from datetime import date
import inspect
import traceback

########################################################################

########################################################################
# This program processes the ETL1 
# 1. Interrogate Raw Folder
# 2. Fix the file
# 3. Load the file
# 4. Insert file into to ODS
# TODO JTH: 
#  1. optional flags 
#  2. hooks for all other datasource files
########################################################################

########################################################################
### Set up global variables and configs
########################################################################
### Set up the configs
json_data=open('./configs/configs.json')
CONFIGS = json.load(json_data)
json_data.close()

# Instantiate cursor dict
dc = DictCursor()
conn = mysql.connector.connect(**CONFIGS['ito_2']) # Choose connection config set
dcursor = DictCursor(conn)
cursor = conn.cursor()

# Database configs
omd = CONFIGS['omd']

########################################################################
def main():
	try:
		query = "SELECT * FROM scrs_smd.sys_file_type"
		dcursor.execute(query)
		ftdict = dcursor.fetchall()
		print repr(ftdict)
		for f in ftdict:
			for key in f:
				print "Key %s Value %s" % (key, repr(f[key]))
		pass
	except mysql.connector.Error as err:
  		print "Mysql Error: %s" % err
		sys.stderr.write('%s exits with ERROR. Mysql error: %s \n' % (str(sys.argv[0]), str(err) ))
		traceback.print_exc()
	except :
		err = sys.exc_info()[0]
		print "General Error: %s" % err
		sys.stderr.write('%s exits with ERROR. Nothing done. %s \n' % (str(sys.argv[0]), str(err) ))
		traceback.print_exc()
		pass
	else:
		pass
	finally:
		print 'Exiting run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
		exit()
		pass
	pass

### MAIN
if __name__ == '__main__':
	main()

