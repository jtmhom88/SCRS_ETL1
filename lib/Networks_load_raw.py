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


def omg_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
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
     INTO TABLE %(ods_stg)s.omg_load_raw
     FIELDS TERMINATED BY ' '
     OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n' 
    (provisioned_as,
     bind,
     class_of_service)
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
    pass

def eag_mms_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
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
     INTO TABLE %(ods_stg)s.eag_mms_load_raw
     FIELDS TERMINATED BY ','
     LINES TERMINATED BY '\n' 
    (ent_oper_id
    ,client_app_id
    ,client_app_type
    ,provisioned_as
    ,registration_id
    ,interface_name
    ,protocol_version
    ,key_word
    ,end_point
    )
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
    pass
    
def eag_sms_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
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
     INTO TABLE %(ods_stg)s.eag_sms_load_raw
     FIELDS TERMINATED BY ','
     LINES TERMINATED BY '\n' 
    (
    ent_id
    ,client_id
    ,system_id
    ,system_type
    ,client_app_type
    ,provisioned_as
    ,registration_id
    ,interface_name
    ,key_word
    ,end_point
    )
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
    pass

def ngeag_mms_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    return False

    
def ngeag_sms_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
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
     INTO TABLE %(ods_stg)s.ngeag_sms_load_raw
     FIELDS TERMINATED BY ','
     LINES TERMINATED BY '\n' 
    (
    ent_id
    ,client_id
    ,system_id
    ,system_type
    ,client_app_type
    ,provisioned_as
    ,registration_id
    ,interface_name
    ,key_word
    ,end_point
    )
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
    pass

def tlg_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
    
    # local file to test file length capability
    local_file_path = 'C:\FILES\LANDING_ZONE\CDR\NonM2M_201304.csv'
    
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    print "Rows found %d" % rows
    
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
        INTO TABLE %(ods_stg)s.tlg_load_raw
        FIELDS TERMINATED BY ','
        LINES TERMINATED BY '\n'
        (provisioned_as, Drop_Call_Ind)
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

def csca_approved_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
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
     IGNORE INTO TABLE %(ods_stg)s.csca_approved_load_raw
     FIELDS TERMINATED BY '|^'
     LINES TERMINATED BY '\n'
     IGNORE 1 LINES
    (
     Application_Id,    
     Application_Type,    
     Registry_Comments,    
     Short_Code,    
     Description,    
     Term,    
     Expiration_Date,    
     Applicant_Contact_Name,    
     Applicant_Company_Name,    
     Applicant_Street_Address_1,    
     Applicant_Street_Address_2,    
     Applicant_City,    
     Applicant_State,    
     Applicant_Zip_Code,    
     Applicant_Phone_Number_1,    
     Applicant_Phone_Number_2,    
     Applicant_Email_Address,    
     Content_Provider_Contact_Name,    
     Content_Provider_Company_Name,    
     Content_Provider_Email_Address,    
     Content_Provider_Phone_Number,    
     Application_Provider_Contact_Name,    
     Application_Provider_Company_Name,    
     Application_Provider_Email_Address,    
     Application_Provider_Phone_Number,    
     Aggregator_Contact_Name,    
     Aggregator_Company_Name,    
     Aggregator_Email_Address,    
     Aggregator_Phone_Number,    
     Program_Type,    
     Proposed_Start_Date,    
     Proposed_End_Date,    
     Program_Ongoing,    
     Is_Program_Offered_During_Specific_Day_Week,    
     Program_Offered_During_Specific_Day_Week_Details,    
     has_Time_Of_Day_Week_Restrictions,    
     Time_Of_Day_Week_Restrictions,    
     Is_National_Campaign,    
     Campaign_Regions_Description,    
     Promotion_By_Tv,    
     Tv_Air_Date_Times,    
     Tv_Impressions,    
     Promotion_By_Radio,    
     Radio_Air_Date_Times,    
     Radio_Impressions,    
     Promotion_By_Print,    
     Print_Air_Date_Times,    
     Print_Impressions,    
     Print_Channel,    
     Promotion_By_Outdoor,    
     Outdoor_Air_Date_Times,    
     Outdoor_Impressions,    
     Promotion_By_POS,    
     POS_Air_Date_Times,    
     POS_Impressions,    
     Promotion_By_Web,    
     Web_Air_Date_Times,    
     Web_Impressions,    
     Program_Traffic_Type,    
     Program_Traffic_Type_Detail,    
     Estimated_Traffic_Volumes,    
     Traffic_Volume_Assumptions,    
     Message_Flow_Detail,    
     Message_Rates,    
     Customer_Support_Detail,    
     Customer_Support_Web_URL,    
     Customer_Support_Toll_Free_Number,    
     Program_Short_Description,    
     Application_Approval_Date,    
     Content_Rating)
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

def csca_pending_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
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
     IGNORE INTO TABLE %(ods_stg)s.csca_pending_load_raw
     FIELDS TERMINATED BY '|^'
     LINES TERMINATED BY '\n'
     IGNORE 1 LINES
    (
     Application_Id,    
     Application_Type,    
     Registry_Comments,    
     Short_Code,    
     Description,    
     Term,    
     Expiration_Date,    
     Applicant_Contact_Name,    
     Applicant_Company_Name,    
     Applicant_Street_Address_1,    
     Applicant_Street_Address_2,    
     Applicant_City,    
     Applicant_State,    
     Applicant_Zip_Code,    
     Applicant_Phone_Number_1,    
     Applicant_Phone_Number_2,    
     Applicant_Email_Address,    
     Content_Provider_Contact_Name,    
     Content_Provider_Company_Name,    
     Content_Provider_Email_Address,    
     Content_Provider_Phone_Number,    
     Application_Provider_Contact_Name,    
     Application_Provider_Company_Name,    
     Application_Provider_Email_Address,    
     Application_Provider_Phone_Number,    
     Aggregator_Contact_Name,    
     Aggregator_Company_Name,    
     Aggregator_Email_Address,    
     Aggregator_Phone_Number,    
     Program_Type,    
     Proposed_Start_Date,    
     Proposed_End_Date,    
     Program_Ongoing,    
     Is_Program_Offered_During_Specific_Day_Week,    
     Program_Offered_During_Specific_Day_Week_Details,    
     has_Time_Of_Day_Week_Restrictions,    
     Time_Of_Day_Week_Restrictions,    
     Is_National_Campaign,    
     Campaign_Regions_Description,    
     Promotion_By_Tv,    
     Tv_Air_Date_Times,    
     Tv_Impressions,    
     Promotion_By_Radio,    
     Radio_Air_Date_Times,    
     Radio_Impressions,    
     Promotion_By_Print,    
     Print_Air_Date_Times,    
     Print_Impressions,    
     Print_Channel,    
     Promotion_By_Outdoor,    
     Outdoor_Air_Date_Times,    
     Outdoor_Impressions,    
     Promotion_By_POS,    
     POS_Air_Date_Times,    
     POS_Impressions,    
     Promotion_By_Web,    
     Web_Air_Date_Times,    
     Web_Impressions,    
     Program_Traffic_Type,    
     Program_Traffic_Type_Detail,    
     Estimated_Traffic_Volumes,    
     Traffic_Volume_Assumptions,    
     Message_Flow_Detail,    
     Message_Rates,    
     Customer_Support_Detail,    
     Customer_Support_Web_URL,    
     Customer_Support_Toll_Free_Number,    
     Program_Short_Description,    
     Application_Approval_Date,    
     Content_Rating)
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

def apigee_load_file(connection,fixed_file_path,file_id,etl_run_id,configs):
    
    cnx = connection
      
    # this function is located in the support module. Used to get file length. Change to fixed file path once deployed.    
    rows = file_len(fixed_file_path)
    print "Rows found %d" % rows
    
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
        IGNORE INTO TABLE %(ods_stg)s.apigee_load_raw
        FIELDS TERMINATED BY '|'
        OPTIONALLY ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        IGNORE 1 LINES
        (
        status
        ,short_code
        ,system
        ,app_name
        ,app_description
        ,environment
        ,pool
        ,short_code_type
        ,app_key
        ,org_id
        ,developer
        )
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