#!/usr/bin/python
#
# coding: utf-8 

"""
This program has utilities for fixing files
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'


import re


# takes the original file and the fixed file path as input to the function    
def cms_cp_incr_fix ((infile_path,outfile_path)):    
    #JTH
    print infile_path
    print outfile_path
    line_count=0
    header_rows = 0 #JTH
    # opens the original file for reading
    with open(infile_path, 'r') as infile:
        # opens the fixed file for writing 
        with open(outfile_path, 'w') as outfile:
          #Loop through each line in the input file and apply the scrubbing algorithm.
          for line in infile:        
           # for all of the lines with a ~ write into the file. If it doesn't have a ~ don't write it.
            if '~' in line:
                s = line.split('~')
                regex =  re.compile("^\d+$")
                # JTH ignore headers, first column should be integer
                if regex.search(s[0]):
                    line_count = line_count + 1
                    outfile.write(line)
            else:
                print 'not in line, not writing into fixed file'
            #print line
    return line_count - header_rows;
    

def cms_sc_incr_fix((infile_path,outfile_path)):
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

def cms_req_incr_fix((infile_path,outfile_path)):
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

def cms_history_sc_incr_fix((infile_path,outfile_path)):
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

def cms_history_req_incr_fix((infile_path,outfile_path)):
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

def cms_agg_incr_fix((infile_path,outfile_path)):
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
    return line_count - header_rows

def cms_sc_price_incr_fix((infile_path,outfile_path)):
    print infile_path
    print outfile_path
    header_rows = 1
    line_count=0    
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

def cms_cp_fix ((infile_path,outfile_path)):  
    get_rows = cms_cp_incr_fix ((infile_path,outfile_path))
    return get_rows   
def cms_sc_fix((infile_path,outfile_path)):
    get_rows = cms_sc_incr_fix((infile_path,outfile_path))
    return get_rows
def cms_req_fix((infile_path,outfile_path)):
    get_rows = cms_req_incr_fix((infile_path,outfile_path))
    return get_rows
def cms_history_sc_fix((infile_path,outfile_path)):
    get_rows = cms_history_sc_incr_fix((infile_path,outfile_path))
    return get_rows
def cms_history_req_fix((infile_path,outfile_path)):
    get_rows = cms_history_req_incr_fix((infile_path,outfile_path))
    return get_rows
def cms_agg_fix((infile_path,outfile_path)):
    get_rows = cms_agg_incr_fix((infile_path,outfile_path))
    return get_rows
def cms_sc_price_fix((infile_path,outfile_path)):
    get_rows = cms_sc_price_incr_fix((infile_path,outfile_path))
    return get_rows



if __name__ == "__main__" :
    cms_rows = cms_cp_incr_fix(('C:\\FILES\LANDING_ZONE\\CMS\\contentproviders_incr.csv','C:\\FILES\\LANDING_ZONE\\CMS\\contentproviders_incr_fixed.csv'))
    print cms_rows