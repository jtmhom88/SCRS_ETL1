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
# Libraries
#lib_path = os.path.abspath('..\lib') # WINDOWS
lib_path = os.path.abspath('./lib') # LINUX
sys.path.append(lib_path)
from lib.dict_cursor import DictCursor
from lib.interrogate import InterrogateRaw
from lib.file_name_parser import file_object
from lib.db_utils import *
from lib.fix_files import *
from lib.load_files import *
from lib.insert_ods import *
# MLL libraries
from lib.CMS_file_fixer import *
from lib.CMS_load_raw import *
from lib.CDR_file_fixer import *
from lib.CDR_load_raw import *
# Network libraries
from lib.Networks_file_fixer import *
from lib.Networks_load_raw import *
# Regular Modules
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
conn = mysql.connector.connect(**CONFIGS['ito_localhost']) # Choose connection config set
dcursor = DictCursor(conn)
cursor = conn.cursor()

# Database configs
omd = CONFIGS['omd']


########################################################################
def main():
	try:
		print 'Started run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
		usage = 'USAGE args: (datasource warning_flag(optional) debug_flag(optional)), e.g. python etl1_e2e.py fte warn debug'
		print usage
		totalargs = len(sys.argv)-1
		cmdargs = sys.argv
		CONFIGS['calling_program'] = str(sys.argv[0])
		#print ("The total numbers of args passed to the script: %d " % totalargs)
		#print ("Args list: %s " % str(cmdargs)

		### Process Args
		if ( totalargs < 1):
			print "Too few args"
			print usage
			msg = "ERROR: problem with arguments"
			raise RuntimeError(msg)
		elif (totalargs > 3):
			print "Too many args"
			print 'USAGE args: (datasource warning_flag debug_flag), e.g. python etl1_e2e.py fte warn debug'
			msg = "ERROR: problem with arguments"
			raise RuntimeError(msg)
		else:
			DS_NAME = str(cmdargs[1]) ### MLL the arg is the same as the folder name
			# lower case the arg
			DS_NAME = DS_NAME.lower()
			if not (DS_NAME in CONFIGS['ds_names']):
				msg = "ERROR: datasource name %s is not a member of %s" % (DS_NAME, repr(CONFIGS['ds_names']))
				raise RuntimeError(msg)
			pass
			# Enable Warning
			if (totalargs >= 2):
				warning_flag =  str(cmdargs[2]).lower()
				p = re.compile('warn')
				if p.match(warning_flag):
					#conn.get_warnings = True
					conn.raise_on_warnings = True
				else:
					msg = 'ERROR: unknown warning_flag %s' % warning_flag
					raise RuntimeError(msg)
			print "Warnings...%s" % conn.raise_on_warnings

			# Enable Debug
			if (totalargs >= 3):
				debug_flag =  str(cmdargs[3]).lower()
				p = re.compile('debug')
				if p.match(debug_flag):
					debug_flag = True
					print "Debug mode True"
				else:
					msg = 'ERROR: unknown debug_flag %s' % debug_flag
					raise RuntimeError(msg)
			else:
				debug_flag = False
				print "Debug mode False"
		pass
		if debug_flag:
			input = raw_input("Paused>>Check Warnings & Debug")

		### Set up variables and configs

		# Set up fixed and raw dirs
		#homedir = 'C:\\Users\\jh5083\\Projects\\SCRS\\Data'
		lzdir = CONFIGS['landing_zone']
		### MLL change the name of fixed and raw folders to point to the right place
		#CONFIGS['fixdir'] =  lzdir + CONFIGS['separ'] + DS_NAME + CONFIGS['separ'] + 'Fixedtest'
		#CONFIGS['rawdir'] =  lzdir + CONFIGS['separ'] + DS_NAME + CONFIGS['separ'] + 'Rawtest'
		CONFIGS['fixdir'] =  lzdir + CONFIGS['separ'] + DS_NAME + CONFIGS['separ'] + 'Fixed'
		CONFIGS['rawdir'] =  lzdir + CONFIGS['separ'] + DS_NAME + CONFIGS['separ'] + 'Raw'
		#print CONFIGS['rawdir'] ,CONFIGS['fixdir']

		# MLL DS_NAME same as folder name same as the ODS table name
		CONFIGS['DS_NAME'] = DS_NAME
		if debug_flag:
			#print repr(CONFIGS)
			#input = raw_input("Paused>>Look at CONFIGS")
			print "DS_NAME ... %s" % DS_NAME
			input = raw_input("Paused>>DS_NAME")

		##################################################################################
		### Main loop
		##################################################################################

		# Interrogate Raw Folder
		# It updates lists filename_list, fileid_list, fixedfilename_list, etl_run_id_list
		# It inserts entries into the sys_file_control and sys_etl_control_log
		# DO INTERROGATION
		# MLL pattern is the the regex to search for the file in the Raw folder
		# MLL template is the template for naming the fixed file
		pattern = CONFIGS[DS_NAME]['pattern']
		template = CONFIGS[DS_NAME]['template']
		print pattern
		print template
		print "Interrogate ..."
		if debug_flag:
			input = raw_input("Paused>>Start Interrogate")
		itgt = InterrogateRaw(conn, CONFIGS, pattern, template)
		itgt.main()
		filename_list=itgt.filename_list
		fileid_list=itgt.fileid_list
		fixedfilename_list=itgt.fixedfilename_list
		etl_run_id_list = itgt.etl_run_id_list
		print "filename_list"
		print filename_list
		#print "fileid_list"
		#print fileid_list
		#print "fixedfilename_list"
		#print fixedfilename_list
		if debug_flag:
			input = raw_input("Paused>>Finished Interrogate")

		# Fix all the files
		for i in range(0, len(filename_list)):

			print "Fixing ..."
			fn = filename_list[i]
			fx = fixedfilename_list[i]
			fi = fileid_list[i]
			etlid = etl_run_id_list[i]

			# FIX the file
			# LOG IT
			if debug_flag:
				input = raw_input("Paused>>Start Fix")
			# Generic Fix Function type
			fix_function = DS_NAME + "_fix"
			print "Fix function ... %s " % fix_function
			if debug_flag:
				input = raw_input("Paused>>Look at fix_function")
			#rows_fixed = fte_fix((fn,fx)) ### MLL this fuction takes (orig_filename, fix_filename) and return rows fixed
			# Generic Fix Function
			rows_fixed = globals()[fix_function]((fn,fx)) ### MLL JTH Genericized!
			update_fix_sys_file_control(conn, CONFIGS, fi, rows_fixed)
			if rows_fixed < 2:
				msg = "ERROR: number of rows fixed less than 2"
				#raise RuntimeError(msg)
				print "Warning: number of rows fixed less than 2"
			if debug_flag:
				input = raw_input("Paused>>End Fix, CHECK sys_file_control!!!")

			# Load the file into raw load table
			# LOG IT
			print "Loading... %s" % fx
			if debug_flag:
				input = raw_input("Paused>>Start Load")
			# Generic Fix Function type
			load_function = DS_NAME + "_load_file"
			print "Load function ... %s " % load_function
			if debug_flag:
				input = raw_input("Paused>>Look at fix_function")
			#rows_loaded_raw = load_fte_file(conn, fx, fi, CONFIGS)  ### MLL this function takes connection,fix_filename, fileid, CONFIGS
			# Generic Fix Function
			rows_loaded_raw_mll =  globals()[load_function](conn, fx, fi, etlid, CONFIGS)  ### MLL this function takes connection,fix_filename, fileid, CONFIGS
			# JTH BUG rows_loaded_raw_mll counts the rows in file and returns rows-1
			rows_loaded_raw = get_load_raw_rows(conn, CONFIGS, DS_NAME, fi)
			if debug_flag:
				input = raw_input("Paused>>Look at get_load_raw_rows")
			# MLL configs used are configs['omd'] , configs['fixdir']
			update_load_sys_file_control(conn, CONFIGS, fi, rows_loaded_raw)
			
			# Insert into the ODS
			# LOG IT -Logging is done by the stored proc
			if debug_flag:
				input = raw_input("Paused>>Start Loading into ODS...")
			insertods_function =  DS_NAME + "_insert_ods"
			#rows_loaded_ods = insert_fte_ods(conn, fi, CONFIGS)  ### MLL this function takes connection, fileid, and configs
			rows_loaded_ods = globals()[insertods_function](conn, fi, CONFIGS)  ### MLL this function takes connection, fileid, and configs
			if debug_flag:
				input = raw_input("Paused>>CHECK Loading into ODS...")
			# MLL configs used are configs['omd']
	
			# LOG IT
			if debug_flag:
				input = raw_input("Paused>>finally update sys_etl_control_log...")
			update_sys_etl_control_log(conn, CONFIGS, etlid, rows_loaded_ods )
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
		cursor.close()
		conn.close()
		exit()
		pass
	pass

### MAIN
if __name__ == '__main__':
	main()

