#!/bin/bash

# Genrates a log file in current directory 
# from the tail end of /var/log/messages.

LINES=5

( date; uname -a ) >>logfile
# Time and machine name
echo ---------------------------------------------- >>logfile
tail -n $LINES /var/log/messages | tr -d "\"'" | xargs | fmt -s >>logfile
echo >>logfile
echo >>logfile

exit 0 


