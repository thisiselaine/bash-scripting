#!/bin/bash

# Check some of the system's environmental variables.
# This is good perventative maintenance.
# If, for example, $USER, the name of the person at the console, is not set,
# the machine will not recognize you. 

: ${HOSTNAME?} ${USER?} ${HOME?} 
# ${MAIL?} commented out as I don't have this set on my virtual machine.
	echo
	echo "Name of the machine is $HOSTNAME."
	echo "You are $USER."
	echo "Your home directory is $HOME."
	# echo "Your mail INBOX is located in $MAIL."
	echo
	echo "If you are reading this message,"
	echo "crtiical environmental variables have been set."
	echo
	echo
	
exit $?
