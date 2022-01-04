#!/bin/bash

# Fetch the local weather  report, taking the user's zip code as an argument.

E_NOPARAMS=86

if [ -z "$1" ]	# Must specify a zip code to fetch.
	then echo "Usage: `basename $0` zip_code
	exit $E_NOPARAMS 
	
// Complete this code.

zip_code=$1		# Stands for the first arg in the command line.
file_suffix=.html 
URL='http://weather.yahoo.com'


