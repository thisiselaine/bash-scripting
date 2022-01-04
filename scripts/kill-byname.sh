#!/bin/bash

# Killing processes by name.
# Compare with kill-process.sh.

# WARNING: this is a dangerous script. 
# Running it carelessly, especially as root, can cause data loss and other undesirable effects.

E_BADARGS=66

if test -z "$1"		# No command line arg supplied
then
	echo "Usage: `basename $0` Process(es)_to_kill"
	exit $E_BADARGS
fi

PROCESS_NAME="$1"
ps ax | grep "$PROCESS_NAME" | awk '{print $1}' | xargs -i kill {} 2&>/dev/null

exit $?

# Killall has the same effect as this script.
# -i is the "replace strings" option to xargs.
# The curly brackets are the placeholder for the repalcement.
# Everything from 2 onward suppresses unwanted error messages.
