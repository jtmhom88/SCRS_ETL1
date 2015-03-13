#!/usr/bin/python
#
# coding: utf-8 

"""
This program has utilities for fixing files
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'


import re
import csv

###########################################################
# OMG Function to do clean up of file
###########################################################
def omg_fix((filename, outfile)):
    try:
        file = open(filename)
        #print filename
        header_rows = 0
        matchObj = re.match( r'^([^\d]+)(\d{8}).(txt|done|csv)$', filename)
        yyyymmdd = ''
        # Capture the yyyymmdd date 
        if matchObj:
            yyyymmdd = matchObj.group(2)
            #print "matchObj.group(1) : ", matchObj.group(2)
        else:
            msg =  "omg_fix Bad filename, expecting yyyymmdd in filename %s" % filename
            print msg
            raise Exception(msg)
        # File to Write Out to of format Input_ATL.txt
        # print outfile
        ofile = open(outfile,'w')
        
        i = 0
        for line in file:
            #print line
            # Remove ? ? ? at the beginning of the file
            #line = re.sub(r'^\? \? \?', '', line)
            line = re.sub(r'^([\w|\?]\s+)([\w|\?]\s+)([\w\?]\s+)', '', line)
            # Remove extra whitespaces
            line = re.sub(r'\s+',' ', line)
            # strip out lead/trail whitespace
            s = line.strip()
            # Write out cleaned line
            ss = s + '\n'
            if s != 'COMPLETED' and  len(s) > 1:
                ofile.write(ss)
                i += 1
            #if i > 5:
            #   print "BREAKOUT"
            #   break
            pass
        line_count = i
        pass
    except Exception, err:
        sys.stderr.write('omg_fix ERROR: %s\n' % str(err))
    else:
        pass
    finally:
        print "omg_fix wrote to %s" % str(outfile)
        print "omg_fix Date found: %s" % yyyymmdd
        return line_count - header_rows
        pass

###########################################################
# EAG Function to do clean up of file
###########################################################
def eag_sms_fix((filename, outfile)):
    try:
        header_rows = 1
        file = open(filename)
        #print filename
        matchObj = re.match( r'^([^\d]+)(\d{6}).(txt|done)$', filename)
        # Capture the yymmdd date 
        if matchObj:
            yyyymmdd = '20' + matchObj.group(2)
            #print "matchObj.group(1) : ", matchObj.group(2)
            #print "yyyymmdd = %s" % repr(yyyymmdd)
        else:
            msg =  "eag_sms_fix Bad filename, expecting yymmdd in filename %s" % filename
            print msg
            raise Exception(msg)
        # File to Write Out to of format Input_EAG.txt
        # print outfile
        ofile = open(outfile,'w')
        
        i = 0
        header_ct = 0
        for line in file:
            #print line
            # Ignore headers
            if ',' in line:
                #print "HEADER line %d" % i
                header_ct += 1
                if header_ct > 1:
                    break
                else: # ignore the header
                    continue

            # Replace ", " with "XX; "
            #line = re.sub(r', ', 'XX; ', line)
            
            # Replace ", " with "XX; "
            line = re.sub(r';', ',', line)

            # Remove extra whitespaces
            line = re.sub(r'\s+',' ', line)
            # strip out lead/trail whitespace
            s = line.strip()
            # Write out cleaned line
            ss = s + '\n'
            if s != 'completed' and  len(s) > 1:
                ofile.write(ss)
                i += 1
            pass
        line_count = i
        pass
    except Exception, err:
        sys.stderr.write('eag_sms_fix ERROR: %s\n' % str(err))
    else:
        pass
    finally:
        print "eag_sms_fix wrote to %s" % str(outfile)
        print "eag_sms_fix Date found: %s" % yyyymmdd
        return line_count - header_rows 
        pass

def eag_mms_fix((filename, outfile)):
    try:
        header_rows = 1
        file = open(filename)
        #print filename
        matchObj = re.match( r'^([^\d]+)(\d{6}).(txt|done)$', filename)
        # Capture the yymmdd date 
        if matchObj:
            yyyymmdd = '20' + matchObj.group(2)
            #print "matchObj.group(1) : ", matchObj.group(2)
            #print "yyyymmdd = %s" % repr(yyyymmdd)
        else:
            msg =  "eag_mms_fix Bad filename, expecting yymmdd in filename %s" % filename
            print msg
            raise Exception(msg)
        # File to Write Out to of format Input_EAG.txt
        # print outfile
        ofile = open(outfile,'w')
        
        i = 0
        header_ct = 0
        for line in file:
            #print line
            # Ignore headers
            if ',' in line:
                header_ct += 1
                print "HEADER header_ct %d line %d %s" % (header_ct, i,line)
            if header_ct < 2:
                continue
            elif header_ct == 2:
                header_ct += 1
                continue
            else:
                #input = raw_input(">>A")
                # Replace ", " with "XX; "
                line = re.sub(r';', ',', line)

                # Remove extra whitespaces
                line = re.sub(r'\s+',' ', line)
                # strip out lead/trail whitespace
                s = line.strip()
                # Write out cleaned line
                ss = s + '\n'
                if s != 'completed' and  len(s) > 1:
                    ofile.write(ss)
                    i += 1
            pass
        line_count = i
        pass
    except Exception, err:
        sys.stderr.write('eag_mms_fix ERROR: %s\n' % str(err))
    else:
        pass
    finally:
        print "eag_mms_fix wrote to %s" % str(outfile)
        print "eag_mms_fix Date found: %s" % yyyymmdd
        return line_count - header_rows
        pass

###########################################################
# NGEAG Function to do clean up of file
###########################################################
def ngeag_sms_fix((filename, outfile)):
    try:
        header_rows = 1
        file = open(filename)
        #print filename
        matchObj = re.match( r'^([^\d]+)(\d{6}).(txt|done)$', filename)
        # Capture the yymmdd date 
        if matchObj:
            yyyymmdd = '20' + matchObj.group(2)
            #print "matchObj.group(1) : ", matchObj.group(2)
            #print "yyyymmdd = %s" % repr(yyyymmdd)
        else:
            msg =  "ngeag_sms_fix Bad filename, expecting yymmdd in filename %s" % filename
            print msg
            raise Exception(msg)
        # File to Write Out to of format Input_EAG.txt
        # print outfile
        ofile = open(outfile,'w')
        
        i = 0
        header_ct = 0
        for line in file:
            #print line
            # Ignore headers
            if ',' in line:
                #print "HEADER line %d" % i
                header_ct += 1
                if header_ct > 1:
                    break
                else: # ignore the header
                    continue

            # Replace ", " with "XX; "
            #line = re.sub(r', ', 'XX; ', line)
            
            # Replace ", " with "XX; "
            line = re.sub(r';', ',', line)

            # Remove extra whitespaces
            line = re.sub(r'\s+',' ', line)
            # strip out lead/trail whitespace
            s = line.strip()
            # Write out cleaned line
            ss = s + '\n'
            if s != 'completed' and  len(s) > 1:
                ofile.write(ss)
                i += 1
            pass
        line_count = i
        pass
    except Exception, err:
        sys.stderr.write('ngeag_sms_fix ERROR: %s\n' % str(err))
    else:
        pass
    finally:
        print "ngeag_sms_fix wrote to %s" % str(outfile)
        print "ngeag_sms_fix Date found: %s" % yyyymmdd
        return line_count - header_rows 
        pass

def ngeag_mms_fix((filename, outfile)):
  return False
#     try:
#         header_rows = 1
#         file = open(filename)
#         #print filename
#         matchObj = re.match( r'^([^\d]+)(\d{6}).(txt|done)$', filename)
#         # Capture the yymmdd date 
#         if matchObj:
#             yyyymmdd = '20' + matchObj.group(2)
#             #print "matchObj.group(1) : ", matchObj.group(2)
#             #print "yyyymmdd = %s" % repr(yyyymmdd)
#         else:
#             msg =  "ngeag_mms_fix Bad filename, expecting yymmdd in filename %s" % filename
#             print msg
#             raise Exception(msg)
#         # File to Write Out to of format Input_EAG.txt
#         # print outfile
#         ofile = open(outfile,'w')
        
#         i = 0
#         header_ct = 0
#         for line in file:
#             #print line
#             # Ignore headers
#             if ',' in line:
#                 header_ct += 1
#                 print "HEADER header_ct %d line %d %s" % (header_ct, i,line)
#             if header_ct < 2:
#                 continue
#             elif header_ct == 2:
#                 header_ct += 1
#                 continue
#             else:
#                 #input = raw_input(">>A")
#                 # Replace ", " with "XX; "
#                 line = re.sub(r';', ',', line)

#                 # Remove extra whitespaces
#                 line = re.sub(r'\s+',' ', line)
#                 # strip out lead/trail whitespace
#                 s = line.strip()
#                 # Write out cleaned line
#                 ss = s + '\n'
#                 if s != 'completed' and  len(s) > 1:
#                     ofile.write(ss)
#                     i += 1
#             pass
#         line_count = i
#         pass
#     except Exception, err:
#         sys.stderr.write('ngeag_mms_fix ERROR: %s\n' % str(err))
#     else:
#         pass
#     finally:
#         print "ngeag_mms_fix wrote to %s" % str(outfile)
#         print "ngeag_mms_fix Date found: %s" % yyyymmdd
#         return line_count - header_rows
#         pass

###########################################################
# TLG Function to do clean up of file
###########################################################
def tlg_fix((infile_path,outfile_path)):
    print infile_path
    print outfile_path
    line_count=0
    header_rows = 1
    
    #opens the original file for reading
    with open(infile_path, 'r') as infile:
        #opens the fixed file for writing
        with open(outfile_path, 'w') as outfile:
          #Loop through each line in the input file and apply the scrubbing algorithm.
          # for every line in the orignal file
          for line in infile:
            # count the lines
            line_count = line_count + 1
            #print line
            # write the line
            l = line.split(",")
            if len(line) > 1 and len(l[0]) > 0 and len(l[1]) > 0:
                outfile.write(line)
    return line_count - header_rows;

###########################################################
# CSCA Function to do clean up of file
###########################################################
def csca_approved_fix((infile_path,outfile_path)):
    print infile_path
    print outfile_path
    line_count=0
    header_rows = 1
    
    #opens the original file for reading
    with open(infile_path, 'r') as infile:
        #opens the fixed file for writing
        with open(outfile_path, 'w') as outfile:
          #Loop through each line in the input file and apply the scrubbing algorithm.
          # for every line in the orignal file
          for line in infile:
            # count the lines
            line_count = line_count + 1
            #print line
            # write the line
            outfile.write(line)
    return line_count - header_rows;

def csca_pending_fix((infile_path,outfile_path)):
    print infile_path
    print outfile_path
    line_count=0
    header_rows = 1
    
    #opens the original file for reading
    with open(infile_path, 'r') as infile:
        #opens the fixed file for writing
        with open(outfile_path, 'w') as outfile:
          #Loop through each line in the input file and apply the scrubbing algorithm.
          # for every line in the orignal file
          for line in infile:
            # count the lines
            line_count = line_count + 1
            #print line
            # write the line
            outfile.write(line)
    return line_count - header_rows;


###########################################################
# Apigee Function to do clean up of file
###########################################################
def apigee_fix((infile_path,outfile_path)):
    print infile_path
    print outfile_path
    line_count=0
    header_rows = 1
   
    outf = open(outfile_path, 'wb')
    with open(infile_path, 'rb') as csvfile:
        writer = csv.writer(outf, delimiter='|',quotechar='"', lineterminator='\n',quoting=csv.QUOTE_ALL)
        filereader = csv.reader(csvfile, delimiter='|', quotechar='"')
        for row in filereader:
            # Eliminate the newline characters within the fields
            row = [r.replace('\r', '').replace('\n', '')  for r in row]
            writer.writerow(row)
            line_count += 1

    return line_count - header_rows;



if __name__ == "__main__" :
    cms_rows = cms_cp_incr_fix(('C:\\FILES\LANDING_ZONE\\CMS\\contentproviders_incr.csv','C:\\FILES\\LANDING_ZONE\\CMS\\contentproviders_incr_fixed.csv'))
    print cms_rows