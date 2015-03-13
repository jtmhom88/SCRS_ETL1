'''
Created on Sep 25, 2013

@author: ML552R
'''
'''
Created on Sep 13, 2013

@author: ML552R
'''


import os
import re
import sys
from datetime import date
from datetime import datetime
import mysql.connector
lib_path = os.path.abspath('./lib') 
sys.path.append(lib_path)
from lib.support import *
from load_files import *
  
  
# name must conform to SOURCE_SYSTEM_load_file to work out of the main framework
def cdr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    # local connection var
    cnx = connection
     
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    print "fdict %s" % repr(fdict)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    
    # this will be removed after files are deployed to box. This is just to test file length functionality
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
        
    rows = file_len(fixed_file_path)
    
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
         LOAD DATA
         INFILE '%(file_path)s'
         INTO TABLE %(ods_stg)s.cdr_load_raw
         FIELDS TERMINATED BY ','
         OPTIONALLY ENCLOSED BY '"'
         LINES TERMINATED BY '\r\n'
         IGNORE 1 LINES
        (short_code,
         is_Billable,
         D01_MO,
         D01_MT,
         D02_MO,
         D02_MT,
         D03_MO,
         D03_MT,
         D04_MO,
         D04_MT,
         D05_MO,
         D05_MT,
         D06_MO,
         D06_MT,
         D07_MO,
         D07_MT,
         D08_MO,
         D08_MT,
         D09_MO,
         D09_MT,
         D10_MO,
         D10_MT,
         D11_MO,
         D11_MT,
         D12_MO,
         D12_MT,
         D13_MO,
         D13_MT,
         D14_MO,
         D14_MT,
         D15_MO,
         D15_MT,
         D16_MO,
         D16_MT,
         D17_MO,
         D17_MT,
         D18_MO,
         D18_MT,
         D19_MO,
         D19_MT,
         D20_MO,
         D20_MT,
         D21_MO,
         D21_MT,
         D22_MO,
         D22_MT,
         D23_MO,
         D23_MT,
         D24_MO,
         D24_MT,
         D25_MO,
         D25_MT,
         D26_MO,
         D26_MT,
         D27_MO,
         D27_MT,
         D28_MO,
         D28_MT,
         D29_MO,
         D29_MT,
         D30_MO,
         D30_MT,
         D31_MO,
         D31_MT)
         SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
         '''
    
    # full statement with location substituted

    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    print full_execute_statement
     

    cur = cnx.cursor() 
    # execute, close, and commit
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows
    
    
    
        
        
    
# everything below this line is used to simulate a call.    
#if __name__ == "__main__" :
    
    
 #   ITO1="130.4.170.146"
 #   ITO2="130.4.170.147"
 #   ITO3="130.4.170.148"
    
#    omd_db = 'DEV_scrs_omd'
 #   ods_stg_db = 'DEV_scrs_ods_stg'
 #   ods_db = 'DEV_scrs_ods'
    
    
  #  db_server = ITO1
   # db_port = 3306
   # db_user = "root"
   # db_password = "scrs"
   # connection = mysql.connector.connect(host=db_server,
    #                                 port=db_port,
    #                                 user=db_user,
    #                                 passwd=db_password,
    #                                 db = ods_stg_db)
    
    #fixed_file_path='/opt/app/workload/FILES/LANDING_ZONE/cdr/Raw/NonM2M_201304.csv'
    
  #  rows_loaded = cdr_load_file(connection,fixed_file_path,'test_file_id123','configs')
  #  print rows_loaded