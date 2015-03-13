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
# JTH
#lib_path = os.path.abspath('./lib') 
#sys.path.append(lib_path)
#from lib.support import *
#from lib.load_files import *
from support import *
from load_files import *

  

def cms_agg_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
     LOAD DATA
     INFILE '%(file_path)s'
     INTO TABLE %(ods_stg)s.cms_agg_load_raw
     FIELDS TERMINATED BY '~'
     OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n' 
     IGNORE 1 LINES
    (agg_id,
     agg_name,
     created_by,
     created_datetime,
     modified_by,
     modified_datetime)
     SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
     '''
    

    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    
    print full_execute_statement
     
    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor() 
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows

def cms_agg_load_file (connection,fixed_file_path,file_id,etl_run_id,configs):
    get_rows = cms_agg_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs)
    return get_rows

def cms_cp_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    #rows = file_len(fixed_file_path)
    rows = 0
    with open(fixed_file_path) as f:
        for lines in f:
            rows += 1
    print "Rows counted %d" % rows
    #input = raw_input("Paused>>Check rows, is it > 0?") 
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
    LOAD DATA
    INFILE '%(file_path)s'
    INTO TABLE %(ods_stg)s.cms_cp_load_raw
    FIELDS TERMINATED BY '~'
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n' 
    (cp_id,
    cp_name,
    created_by,
    created_datetime)
    SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
    '''

    # JTH
    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    print full_execute_statement

    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor() 
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows

def cms_cp_load_file (connection,fixed_file_path,file_id,etl_run_id,configs):
    get_rows = cms_cp_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs)
    return get_rows       

def cms_sc_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
     LOAD DATA
     INFILE '%(file_path)s'
     INTO TABLE %(ods_stg)s.cms_sc_load_raw
     FIELDS TERMINATED BY '~'
     OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n' 
     IGNORE 1 LINES
    (SC_Id,
     Billable,
     Class_of_service,
     Short_Code,
     Created_By,
     Created_Datetime,
     Deleted,
     End_Datetime,
     IS_CSC,
     Migration_Auth_Doc_Id,
     Requested_Provisioning_Datetime,
     sc_Service_Type,
     sc_STATUS,
     Updated_By,
     Updated_Datetime,
     Agg_Id)
     SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
     '''
    

    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    
    print full_execute_statement
     
    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor() 
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows
 
def cms_sc_load_file (connection,fixed_file_path,file_id,etl_run_id,configs):
    get_rows = cms_sc_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs)
    return get_rows   

def cms_history_sc_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
     LOAD DATA
     INFILE '%(file_path)s'
     INTO TABLE %(ods_stg)s.cms_history_sc_load_raw
     FIELDS TERMINATED BY '~'
     OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n' 
     IGNORE 1 LINES
    (SC_Id,
     Begin_SC,
     End_SC,
     Transaction_Datetime,
     Old_SC_Status,
     New_SC_Status,
     Modified_By,
     Modified_Datetime)
     SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
     '''
    

    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    
    print full_execute_statement
     
    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor() 
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows
    
def cms_history_sc_load_file (connection,fixed_file_path,file_id,etl_run_id,configs):
    get_rows = cms_history_sc_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs)
    return get_rows   
        
def cms_history_req_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    # ETL statement that is ran. The file location is set dynamically 

    execute_statement = '''
    LOAD DATA
    INFILE '%(file_path)s'
    INTO TABLE %(ods_stg)s.cms_history_req_load_raw
    FIELDS TERMINATED BY '~'
    OPTIONALLY ENCLOSED BY '"'
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
    # JTH
    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    print full_execute_statement
    #input = raw_input("Paused>>Check full_execute_statement") #JTH
     
    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor()
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows

def cms_history_req_load_file (connection,fixed_file_path,file_id,etl_run_id, configs):
    get_rows = cms_history_req_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs)
    return get_rows   

def cms_req_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
     LOAD DATA
     INFILE '%(file_path)s'
     INTO TABLE  %(ods_stg)s.cms_req_load_raw
     FIELDS TERMINATED BY '~'
     OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n' 
     IGNORE 1 LINES
     (req_Id,
     Program_Name,
     Program_Descr,
     req_Status,
     Agg_Id,
     CP_Id,
     Business_Type,
     Modified_By,
     Modified_Datetime)
     SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
     '''
    

    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    
    print full_execute_statement
     
    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor() 
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows

def cms_req_load_file (connection,fixed_file_path,file_id,etl_run_id,configs):
    get_rows = cms_req_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs) # JTH name of function is wrong
    return get_rows   

def cms_sc_price_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    
    
    # get date_params from the file
    fdict = file_object(fixed_file_path)
    year=int(fdict['year'])
    month=int(fdict['month'])
    day=int(fdict['day'])
    date_params = date_dict(date(year,month,day))
    print repr(date_params)
    #input = raw_input("Paused>>Check date_params") #JTH
    
    # ETL statement that is ran. The file location is set dynamically 
    execute_statement = '''
     LOAD DATA
     INFILE '%(file_path)s'
     INTO TABLE %(ods_stg)s.cms_sc_price_load_raw
     FIELDS TERMINATED BY '~'
     OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n' 
     IGNORE 1 LINES
    (req_Id,
     SC_Id,
     Activity,
     req_SC_Created_By,
     req_SC_Created_Datetime,
     Deleted,
     Migration_Case,
     Price_Point_Created_By,
     Price_Point_Created_Datetime,
     Price_Point,
     Frequency)
     SET etl_run_id = %(etl_run_id)s, file_id = %(file_id)s, extract_date = %(extract_date)r;
     '''
    

    full_execute_statement =  parametrize_load_statement(execute_statement,fixed_file_path,file_id,etl_run_id, configs)
    
    print full_execute_statement
     
    #################################################################################  
    ### setup ETL run parameters for the specific source system that is being run ###
    #################################################################################
    cur = cnx.cursor() 
    cur.execute(full_execute_statement)
    cur.close() 
    cnx.commit()
    return rows

def cms_sc_price_load_file (connection,fixed_file_path,file_id,etl_run_id,configs):
    get_rows = cms_sc_price_incr_load_file(connection,fixed_file_path,file_id,etl_run_id,configs)
    return get_rows   
    

# ### Main for testing    
# if __name__ == "__main__" :
#     # JTH
#     connection = None
#     configs = {'ods_stg':'scrs_ods_stg'}
#     filepath = "C:\\history_campaign_incr_2013082723.csv"
#     file_id = 111
#     etl_run_id = 999
#     cms_history_req_incr_load_file(connection,filepath,file_id,etl_run_id,configs)
    
#     print query