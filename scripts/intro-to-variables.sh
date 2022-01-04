#!/bin/bash

# Variables: assignment and substitution

a=375
hello=$a	# No space permitted on either ide of = sign when initializing variables.

echo hello	# hello
# Not a variable reference, just the string "hello"

echo $hello	# 375

echo ${hello} # Variable reference like above: 375

# QUOTING

echo "$hello" # 375

echo "${hello}" # 375

echo 	# Nothing

hello="A B  C   D"
echo $hello		# A B C D
echo "$hello"	# Exactly as is: A B  C   D
# Quoting a variable preserves whitespace

echo

echo '$hello' # $hello
# Single quotes disable variable referencing, which prints out $ literally

# If there is whitespace embedded within a variable, then quotes are necessary
numbers="1 2 3"
echo "numbers = $numbers"

# You can unset variables:
unset_var=23	# Set to 23
unset unset_var	# Unset to null
echo "unset_var = $unset_var"	# Has a null value

echo

exit 0
