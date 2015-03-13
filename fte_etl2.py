#!/usr/bin/python

# Final process for ETL2 for FTE

# PREREQ, the following code has already been run.
# ITO 2
#CALL scrs_edw_stg.truncate_scrs_edw_stg();
# PUTTY
#/opt/app/workload/SCRS/python/AR/etl2_loop.py 100 >> run.log &

# Regular Modules
import sys
import os
sys.path.append('/opt/app/workload/lib/python')
import mysql.connector
import re
import json
import subprocess as sub
import inspect
import traceback
from datetime import datetime
from datetime import date

### Set up the configs
json_data=open('./configs/configs.json')
CONFIGS = json.load(json_data)
json_data.close()

# Instantiate cursor dict
conn3 = mysql.connector.connect(**CONFIGS['ito_3']) # Choose connection config set
cursor3 = conn3.cursor()

# Function to CALL scrs_edw_transfer.drop_FTE_transfer_tables();
def drop_FTE_transfer_tables(connection,cursor):
  args = ()
  proc = 'scrs_edw_transfer.drop_FTE_transfer_tables'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# Function to CALL scrs_edw_transfer.update_dim_fte();
def update_dim_fte(connection,cursor):
  args = ()
  proc = 'scrs_edw_transfer.update_dim_fte'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# Function to CALL scrs_edw_transfer.update_fact_fte();
def update_fact_fte(connection,cursor):
  args = ()
  proc = 'scrs_edw_transfer.update_fact_fte'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

########################################
def main():
	try:
		print 'Started run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
		
		# Drop FTE tables on ito3
		print drop_FTE_transfer_tables(cursor3)
		# SCP over the fte loader tables
		logfile = "/opt/app/workload/SCRS/sh/fte_scp.log"
		f = open(logfile, "w")
		retcode =sub.call("/opt/app/workload/SCRS/sh/fte_scp.sh",stdout=f,stderr=f,shell=True)
		f.close()
		# Check for Errors
		regex = re.compile("(FAILURE)+")
		with open(logfile, "r") as myfile:
			data=myfile.read()
			if regex.search(data):
				msg = "FAILURE during fte_scp, check logfile %s" % logfile
				raise RuntimeError(msg)
		# If no errors continue to post-process steps
		print update_dim_fte(cursor3)
		print update_fact_fte(cursor3)
		pass
	except mysql.connector.Error as err:
 		print "Mysql Error: %s" % err
		sys.stderr.write('%s exits with ERROR. Mysql error: %s \n' % (str(sys.argv[0]), str(err) ))
		traceback.print_exc()
	except Exception, e:
		err = sys.exc_info()[0]
		print "General Error: %s" % err
		sys.stderr.write('%s exits with ERROR. Nothing done. %s \n' % (str(sys.argv[0]), str(err) ))
		traceback.print_exc()
		raise
	else:
		pass
	finally:
		print 'Exiting run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
		cursor3.close()
		conn3.close()
		pass
	pass

### MAIN
if __name__ == '__main__':
	main()

