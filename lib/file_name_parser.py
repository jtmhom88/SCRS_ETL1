#!/usr/bin/python

import re


#As of now, this takes a file name as an input and outputs a dictionary
#containing some derived characteristics. However, it is missing:
#    data source name
#    file id
#    folder name
#    fixed file name
#    etl_run_id 


def file_object(file_name):
  universal_pattern = '^([^0-9].+?)?((20\d{6})|(\d{6})|(20\d{8}))([^0-9].+)'
  pattern = re.compile(universal_pattern)
  match = pattern.match(file_name)
  if match == None:
    return False
  else:
    prefix = match.group(1)
    if prefix == None:
      prefix = ''
    date_part = match.group(2)
    suffix = match.group(6)
    suffix = re.sub('[^\.]+(\..+)','\1',suffix)
    if len(date_part) == 6 and (('NonM2M' in prefix) or ('cdr' in prefix)): # CDR date parsing
      print 'cdr'
      extended_date_part = date_part + '01'
      full_date_part = date_part
      py_template = prefix + '%(yy)s%(month)s%(day)s' + suffix
    elif len(date_part) == 6:
      extended_date_part = '20' + date_part + '00'
      full_date_part = '20' + date_part
      py_template = prefix + '%(yy)s%(month)s%(day)s' + suffix
    elif len(date_part) == 8:
      extended_date_part = date_part + '00'
      full_date_part = date_part
      py_template = prefix + '%(year)s%(month)s%(day)s' + suffix
    elif len(date_part) == 10:
      extended_date_part = date_part
      full_date_part = date_part[0:8]
      py_template = prefix + '%(year)s%(month)s%(day)s*' + suffix
    else:
      return None

    return dict(
      file_name=file_name,
      date_part=date_part,
      full_date_part=full_date_part,
      yy = extended_date_part[2:4],
      year = extended_date_part[0:4],
      month = extended_date_part[4:6],
      day = extended_date_part[6:8],
      hour = extended_date_part[8:10],
      py_template = py_template,
      file_name_template = prefix + '{date_part}' + suffix,
      file_id_tag = extended_date_part[2:4] + extended_date_part[4:6] + extended_date_part[6:8] + extended_date_part[8:10]
      #file_id = '%(ds_id)s' + yy + month + day + hour # TODO , this does NOT work. 
      )

