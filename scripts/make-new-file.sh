#!/bin/bash

# Original idea to automate the process of making a new executable file.

# Obtain file name.
read -p "File name: " filename
# Create file.
touch $filename

# Verify if file has been made.
if [[ -f "$filename" ]]
then
	echo "$filename made successfully."
else
	echo "Could not make your file."
	exit 126
fi

# Give owner permissions to the file.
chmod u+xr $filename

# Show in directory.
ls

exit 0
