#!/usr/bin/python
#
# coding: utf-8 
#
"""
"""
__author__ = 'jh5083@att.com (Johnny Hom) for SCRS Project'

########################################################################


def add(x,y):
	return x+y
	pass

def times(x,y):
	return x*y
	pass

funcdict = {
	'f1' : add,
	'f2' : times
}

myvar = 'f2'
parameter1 = 2
parameter2 = 3
myfunc = add
print funcdict[myvar](parameter1, parameter2)
print myfunc(parameter1, parameter2)