#!/bin/bash

# Find a particular string in the binaries in a specified directory.
# In other words, check all the binaries in a directory for authorship.

directory=/usr/bin/
fstring="Free Software Foundation"	# See which files come from the FSF.

for file in $( find $directory -type f -name '*' | sort )
do
	strings -f $file | grep "fstring" | sed -e "s%$directory%%"
done

exit $?

# For an additional challenge, convert this script to take command line parameters for $directory and $fstring.
