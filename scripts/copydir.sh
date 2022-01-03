#!/bin/bash

# Copy all files in $PWD to diretory specified on command line.

E_NOARGS=85

if [ -z "$1" ]		# Exit if no argument given.
then
	echo "Usage: `basename $0` directory-to-copy-to"
	exit $E_NOARGS
fi

ls . | xargs -i -t cp ./() $1
# How this works:
# List the files in current directory (ls .)
# Pass the output of "ls" as arugments to "xargs"
# Then copy (cp) these arguments ({}) to new directory ($1).

exit 0
