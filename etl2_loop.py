import global_config as config
import sys
sys.path.append(config.local_site_packages_path)
#coding: utf8
#import re
import mysql.connector
from mysql.connector.cursor import MySQLCursor as Cursor
import inspect
import traceback
from datetime import datetime

def process_ods(conn, proc_list):
    for proc_name in proc_list:
        try:
            print 'Started run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
            cursor = conn.cursor()
            for x in xrange(0,last):
                print 'Calling: scrs_emd.update_' + proc_name + '. Iteration: ' + str(x)
                cursor.callproc('scrs_emd.update_' + proc_name)
                conn.commit()
        except mysql.connector.Error as err:
            print "Mysql Error: %s" % err
        #    sys.stderr.write('%s exits with ERROR. Mysql error: %s \n' % (str(sys.argv[0]), str(err) ))
        except :
            cursor.callproc('scrs_emd.' + proc_name + '_clear_stg_area')
            err = sys.exc_info()[0]
            print "General Error: %s" % err
            sys.stderr.write('%s exits with ERROR. Nothing done. %s \n' % (str(sys.argv[0]), str(err) ))
            traceback.print_exc()
            pass
        finally:
            cursor.close()
            print 'Done with ' + proc_name + '.'
            print 'Finished run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])

def load_edw(conn, proc_list):
    for proc_name in proc_list:
        try:
            print 'Started load %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
            cursor = conn.cursor()
            print 'Calling: ' + conn.database + '.' + proc_name + '_load_edw.'
            full_proc_name = str('' + conn.database + '.' + proc_name + '_load_edw')
            cursor.callproc(full_proc_name)
            conn.commit()
        except mysql.connector.Error as err:
            print "Mysql Error: %s" % err
        #    sys.stderr.write('%s exits with ERROR. Mysql error: %s \n' % (str(sys.argv[0]), str(err) ))
        except :
            err = sys.exc_info()[0]
            print "General Error: %s" % err
            sys.stderr.write('%s exits with ERROR. Nothing done. %s \n' % (str(sys.argv[0]), str(err) ))
            traceback.print_exc()
            pass
        finally:
            cursor.close()
            print 'Done with ' + proc_name + '.'
            print 'Finished run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])
    



##conn = mysql.connector.connect(**config.ito_local)



#conn_2 = mysql.connector.connect(**config.ito_2)
#conn_3 = mysql.connector.connect(**config.ito_3)
conn = mysql.connector.connect(**config.ito_2)
conn.database = 'scrs_emd'
conn.raise_on_warnings = True

if len(sys.argv)>1:
    last = int(sys.argv[1])
else:
    last = 1

# EVERTHING
#proc_list = ['dim_ngeag_sms']
#proc_list = ['dim_fte','fact_fte','dim_cms_agg','dim_cms_cp','dim_cms_req','dim_cms_history_req','dim_cms_sc','dim_cms_sc_price','dim_cms_history_sc','dim_tlg','dim_omg','dim_eag_mms','dim_eag_sms','dim_csca']
proc_list = ['dim_fte','fact_fte','dim_cms_agg','dim_cms_cp','dim_cms_req','dim_cms_history_req','dim_cms_sc','dim_cms_sc_price','dim_cms_history_sc','dim_tlg','dim_omg','dim_eag_mms','dim_eag_sms','dim_csca','dim_ngeag_sms']

# Everything sans FTE
#proc_list = ['dim_cms_agg','dim_cms_cp','dim_cms_req','dim_cms_history_req','dim_cms_sc','dim_cms_sc_price','dim_cms_history_sc','dim_tlg','dim_omg','dim_eag_mms','dim_eag_sms','dim_csca']

# FTE
#proc_list = ['dim_fte','fact_fte']

# CMS
#proc_list = ['dim_cms_agg','dim_cms_cp','dim_cms_req','dim_cms_history_req']
#proc_list = ['dim_cms_sc']
#proc_list = ['dim_cms_sc','dim_cms_sc_price','dim_cms_history_sc']
#proc_list = ['dim_cms_history_req']
#proc_list = ['dim_cms_sc','dim_cms_sc_price']
#proc_list = ['dim_cms_history_sc']

# Networks
#proc_list = ['dim_tlg','dim_omg','dim_eag_mms','dim_eag_sms','dim_csca']
#proc_list = ['dim_csca']

process_ods(conn, proc_list)
#load_edw(conn, proc_list)

conn.close()
exit()

#cursor = conn.cursor()
#cursor.callproc('scrs_edw.update_dim_cms_req_complete')
#conn.commit()
#cursor.close()

#print 'Done with cms_consolidated_dims.'

#print 'Finished run %s at: {0}'.format(datetime.now()) % str(sys.argv[0])

#exit()


