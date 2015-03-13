'''
Created on Aug 23, 2013

@author: ml552r

support procs that contain utilities relating to logging and file procedures


'''

import sys
import os
#import getopt
#class_path = os.path.abspath('Classes')
#sys.path.append(class_path)
import re
#import MySQLdb
import os.path
from datetime import date, timedelta


    
def insert_run_status(conn,source_system,process_step,file,file_len,status,notes,start_flag):
 # class to track the overall progress of any specific run. The logic to determine runs is handled in the update_log stored proc
    cur = conn.cursor()
    run_status = "Call update_log ('"+source_system+"','"+process_step+"','"+file+"','"+file_len+"','"+status+"','"+str(notes).replace("'", '')+"','"+start_flag+"')"
    print run_status
    cur.execute(run_status)
    conn.commit()
    cur.close 
    
def file_len(fname):
# class to calculate a file length for any file passed in. The file is passed in as a path
    with open(fname) as f:
        i = 0 
        for i, l in enumerate(f):
            pass
    return i

    
def __init__(self,conn):
    self.conn = conn
    