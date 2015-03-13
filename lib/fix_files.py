#!/usr/bin/python
#
# coding: utf-8 

"""
This program has utilities for fixing files
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

import re

def update_fix_sys_file_control(connection, configs, file_id, rows):
  cursor=connection.cursor()
  table = str(configs['omd']) + ".sys_file_control"
  query="""
  UPDATE %s
  SET raw_file_rows=%s, fix_done=1
  WHERE file_id = %s
  """ % (table,rows,file_id)
  print query
  cursor.execute(query)
  connection.commit()
  cursor.close()
  pass

def fte_fix((infile_path,outfile_path)):
  n = 0
  header_rows = 1
  print "Processing: " + infile_path
  with open(infile_path, 'r') as infile:
    with open(outfile_path, 'w') as outfile:
      #Loop through each line in the input file and apply the scrubbing algorithm.
      for line in infile:
        n = n + 1
        #Escape all backslashes (i.e. '\' => '\\')
        if re.search(r'\\', line) == None:
          fixed_line = line
        else:
          fixed_line = re.sub(r'\\',r'\\\\',line)

        #Jason's Files have already replaced nulls with empty strings and have 
        #converted commas to pipes. Thus, if jason_flag is set, replace "|" => ^|^
        #rather than "," => ^|^
        #if jason_flag == 1:
        fixed_line = re.sub('"\|"','^|^',fixed_line)
        #else:
        fixed_line = re.sub('",,"','","","',fixed_line)
        fixed_line = re.sub('","','^|^',fixed_line)

        #At this point, jason files and original files should look exactly the same.
        #Apply the rest of the alogithm described above. 
        fixed_line = re.sub('^"','^',fixed_line) #replace " at the start of line
        fixed_line = re.sub('"$','^',fixed_line) #replace " at the start of line
        fixed_line = re.sub('"','\\"',fixed_line) #escape quotes.
        fixed_line = re.sub('\^\|\^','","',fixed_line) #convert ^|^ back to ","
        fixed_line = re.sub('^\^','"',fixed_line) #replace ^ at start of line
        fixed_line = re.sub('\^$','"',fixed_line) #replace ^ at end of line 
        
        #write the scrubbed line the output file
        outfile.write(fixed_line)
  return n - header_rows

