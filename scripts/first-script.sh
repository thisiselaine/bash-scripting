#!/bin/bash

# Prompt taken from 'Advnced Bash-Scripting Guide' by Mendel Cooper
# Write a script that upon invocation shows:
# the TIME AND DATE,
# lists ALL LOGGED-IN USERS,
# gives the SYSTEM UPTIME.
# The script should then save this information to a logfile.

LOG_DIR=/var/log
ROOT_UID=0		# Only users with $UID 0 have root privileges.
E_XCD=86		# Can't change directory?
E_NOTROOT=87	# Non-root exit error.

# Make sure that user is running as root.
if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi

# Test whether command-line argument is present (non-empty).
if [ -n "$1" ]
then
	lines=$1
else
	# Default, if not specified on command line.
	lines=$LINES
fi	

# Doublecheck if in right directory before messing with log file.
cd $LOG_DIR
if [ `pwd` != "$LOG_DIR" ]
then
	echo "Can't change to $LOG_DIR."
	exit $E_XCD
fi

# Redirect output of commands to txt file.
date && who && uptime > output.txt

exit 0
# A zero return value from the script upon exit indicates
# a successful exit to the shell. 
