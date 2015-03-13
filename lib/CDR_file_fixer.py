#!/usr/bin/python
#
# coding: utf-8 

"""
This program has utilities for fixing files
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import re


# takes the original file and the fixed file path as input to the function
def cdr_fix((infile_path,outfile_path)):
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
  
    
    

if __name__ == "__main__" :
    cdr_rows = cdr_fix(('C:\\FILES\\LANDING_ZONE\\CDR\\NonM2M_201304.csv','C:\\FILES\\LANDING_ZONE\\CDR\\cdr_fixed.csv'))
    print cdr_rows
   