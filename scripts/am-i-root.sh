#!/bin/bash

# Determines whether or not the user is root.

# =============== METHOD ONE =============== 

ROOTUSER_NAME=root
# Could alternatively be `id -nu` for username.
username=`whoami`	

if [ "$username" = "$ROOTUSER_NAME" ]
# Not necessary to complete then statement.
then
	echo "You are root."
fi

exit 0

# =============== METHOD TWO =============== 
# Code below will not execute, because the script already exited.

ROOT_UID=0		# Root has $UID 0.

if [ "$UID" -eq "$ROOT_UID" ]
then
	echo "You are root."
else
	echo "You are not root."
fi

