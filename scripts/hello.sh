#!/bin/bash

# Saying "hello" or "goodbye" depending on how script is invoked.
# Make a link in current working directory ($PWD) to this script:
# 		ln -s hello.sh goodbye
# ln creates a reference, a pointer to the file only a few bytes in size.
# Try invoking the script both ways: 
# ./hello.sh
# ./goodbye

HELLO_CALL=65
GOODBYE_CALL=66

if [ $0 = "./goodbye" ]
then
	echo "Good-bye!"
	exit $GOODBYE_CALL
fi

echo "Hello!"
exit $HELLO_CALL
