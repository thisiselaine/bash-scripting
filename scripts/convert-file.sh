#!/bin/bash

# Converts all the files in a directory into another format.
# Assumes imagemagick installed (standard in most Linux distros)

INFMT=png		# Can be tif, jpg, gif, etc.
OUTFMT=pdf		# Can be tif, jpg, gif, pdf, etc.

for pic in *"$INFMT"
do
	p2=$(ls "$pic" | sed -e s/\.$INFMT//)
	# echo $p2
	convert "$pic" $p2.$OUTFMT
	done
	
exit $?
