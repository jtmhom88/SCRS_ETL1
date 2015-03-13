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
conn2 = mysql.connector.connect(**CONFIGS['ito_2']) # Choose connection config set
cursor2 = conn2.cursor()
conn3 = mysql.connector.connect(**CONFIGS['ito_3']) # Choose connection config set
cursor3 = conn3.cursor()


# ITO2
# CALL scrs_omd.check_today_run_status();
def check_today_run_status(connection,cursor):
	entries=0
	args = (entries,)
	proc = 'scrs_omd.check_today_run_status'
	print proc
	result = cursor.callproc(str(proc), args)
	connection.commit()
	# Return number of new entries
	print result
	ct = int(result[0])
	return ct

# ITO2
# Function to CALL scrs_edw_stg.truncate_scrs_edw_stg();
def truncate_scrs_edw_stg(connection,cursor):
  args = ()
  proc = 'scrs_edw_stg.truncate_scrs_edw_stg'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO2
# Function to CALL scrs_emd.update_fact_sc_network_history();
def update_fact_sc_network_history(connection,cursor):
  args = ()
  proc = 'scrs_emd.update_fact_sc_network_history'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO2
# Function to CALL scrs_emd.update_fact_sc_network_status
def update_fact_sc_network_status(connection,cursor):
  args = ()
  proc = 'scrs_emd.update_fact_sc_network_status'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO3
# Function to CALL scrs_util.drop_all_network_tables();
def drop_all_network_tables(connection,cursor):
  args = ()
  proc = 'scrs_util.drop_all_network_tables'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO2
# CALL scrs_emd.update_dim_cms_req_complete();
def update_dim_cms_req_complete(connection,cursor):
  args = ()
  proc = 'scrs_emd.update_dim_cms_req_complete'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO2
# CALL scrs_emd.update_fact_cms_history_req();
def update_fact_cms_history_req(connection,cursor):
  args = ()
  proc = 'scrs_emd.update_fact_cms_history_req'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO2
# CALL scrs_emd.update_fact_cms_history_sc();
def update_fact_cms_history_sc(connection,cursor):
  args = ()
  proc = 'scrs_emd.update_fact_cms_history_sc'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO2
# Finally
# CALL scrs_emd.update_fact_master_sc_req_id_report();
def update_fact_master_sc_req_id_report(connection,cursor):
  args = ()
  proc = 'scrs_emd.update_fact_master_sc_req_id_report'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO3
# CALL scrs_util.drop_ALL_cms_tables();
def drop_ALL_cms_tables(connection,cursor):
  args = ()
  proc = 'scrs_util.drop_ALL_cms_tables'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO3
# CMS post process
# CALL scrs_edw.update_dim_fte_sc_req_complete();
def update_dim_fte_sc_req_complete(connection,cursor):
  args = ()
  proc = 'scrs_edw.update_dim_fte_sc_req_complete'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

# ITO3
# CALL scrs_edw.update_dim_fte_refund_summary();
def update_dim_fte_refund_summary(connection,cursor):
  args = ()
  proc = 'scrs_edw.update_dim_fte_refund_summary'
  print proc
  result = cursor.callproc(str(proc), args)
  connection.commit()
  return str(result)

########################################
def main():
	try:
		print 'Started run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
		# Prerequisite
		# ITO 2 need to have called CALL scrs_edw_stg.truncate_scrs_edw_stg();
		# Then run python etl2_loop.py 100 
		usage = 'USAGE args: debug_flag or override_flag(optional)'
		print usage
		totalargs = len(sys.argv)-1
		cmdargs = sys.argv

		### Process Args
		if (totalargs > 2):
			print "Too many args"
			msg = "ERROR: problem with arguments"
			raise RuntimeError(msg)
		elif (totalargs == 1):
			debug_flag =  str(cmdargs[1]).lower()
			p = re.compile('debug')
			o = re.compile('override')
			if p.match(debug_flag):
				debug_flag = True
				print "Debug mode True"
			elif o.match(debug_flag):
				override_flag = True
				debug_flag = False
				print "Override mode True"
			else:
				msg = 'ERROR: unknown debug_flag %s' % debug_flag
				raise RuntimeError(msg)
		else:
			debug_flag = False
			override_flag = False
			print "Debug mode False"
		pass

		# Check Today's Entries
		entries = check_today_run_status(conn2,	cursor2)
		expectedentries = int(CONFIGS['expectedentries'])
		print "Today's run new entries %s" % str(entries)
		if entries != expectedentries:
			msg = "Unexpected number of data entries %s, expected %s" % (str(entries),str(expectedentries))
			if not override_flag:
				raise RuntimeError(msg)
		else:
			msg = "MATCHED data entries %s, expected %s" % (str(entries),str(expectedentries))
			print msg
			#raise RuntimeError(msg)

		# POST PROCESS NETWORKS
		# NETWORKS START
		print "Starting NETWORKS..."
		# ITO2
		if debug_flag:
			input = raw_input("Paused>>update_fact_sc_network_history")
		print update_fact_sc_network_history(conn2,	cursor2)

		if debug_flag:
			input = raw_input("Paused>>update_fact_sc_network_status")
		print update_fact_sc_network_status(conn2, cursor2)

		# ITO3
		if debug_flag:
			input = raw_input("Paused>>drop_all_network_tables")
		print drop_all_network_tables(conn3, cursor3);

		# SCP over the network loader tables
		if debug_flag:
			input = raw_input("Paused>>networks_scp")
		logfile = "/opt/app/workload/SCRS/sh/networks_scp.log"
		f = open(logfile, "w")
		retcode =sub.call('/opt/app/workload/SCRS/sh/networks_scp.sh',stdout=f,stderr=f,shell=True)
		f.close()
		# Check for Errors
		regex = re.compile("(FAILURE)+")
		with open(logfile, "r") as myfile:
			data=myfile.read()
			if regex.search(data):
				msg = "FAILURE during networks_scp, check logfile %s" % logfile
				raise RuntimeError(msg)
			else:
				print "networks_scp SUCCESS"

		############################
		# NETWORKS FINISHED
		############################
		print "NETWORKS complete, starting CMS..."
		############################
		# CMS BEGIN
		############################
		# ITO2
		if debug_flag:
			input = raw_input("Paused>>update_dim_cms_req_complete")
		print update_dim_cms_req_complete(conn2, cursor2)
		if debug_flag:
			input = raw_input("Paused>>update_fact_cms_history_req")
		print update_fact_cms_history_req(conn2, cursor2)
		if debug_flag:
			input = raw_input("Paused>>update_fact_cms_history_sc")
		print update_fact_cms_history_sc(conn2, cursor2)
		# Finally
		if debug_flag:
			input = raw_input("Paused>>update_fact_master_sc_req_id_report")
		print update_fact_master_sc_req_id_report(conn2, cursor2)

		# ITO3
		if debug_flag:
			input = raw_input("Paused>>drop_ALL_cms_tables")
		print drop_ALL_cms_tables(conn3, cursor3)

		# SCP over the CMS loader tables
		if debug_flag:
			input = raw_input("Paused>>cms_scp")
		logfile = "/opt/app/workload/SCRS/sh/cms_scp.log"
		f = open(logfile, "w")
		retcode =sub.call('/opt/app/workload/SCRS/sh/cms_scp.sh',stdout=f,stderr=f,shell=True)
		f.close()
		# Check for Errors
		regex = re.compile("(FAILURE)+")
		with open(logfile, "r") as myfile:
			data=myfile.read()
			if regex.search(data):
				msg = "FAILURE during cms_scp, check logfile %s" % logfile
				raise RuntimeError(msg)
			else:
				print "cms_scp SUCCESS"
				
		# ITO3 Post Process
		if debug_flag:
			input = raw_input("Paused>>update_dim_fte_sc_req_complete")
		print update_dim_fte_sc_req_complete(conn3, cursor3)
		if debug_flag:
			input = raw_input("Paused>>update_dim_fte_refund_summary")
		print update_dim_fte_refund_summary(conn3, cursor3)
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
		conn2.commit()
		cursor2.close()
		conn2.close()
		conn3.commit()
		cursor3.close()
		conn3.close()
		pass
	pass

### MAIN
if __name__ == '__main__':
	main()

