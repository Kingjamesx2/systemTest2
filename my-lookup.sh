#!/bin/bash

#James Faber
#11/15/22
#System Administration Test 2

FILENAME=$HOME/$1
LASTNAME=$2


# a). Accept a file name from the command line that represents a text file that contains first and last names. And accepts a second command line argument that contains the last name that the user wants to find.

if [ -z $FILENAME ] && [ -z $LASTNAME ]
then
	echo "This users need to provide both <FILENAME><LASTNAME>"
	echo " "
	echo "Goodbye have a nice day"
	echo " "
else
  # b.) Your script should use a regular expression to get all the names(lines) in the file that have the requested last name.

	grep -P "$2" "$1"
	echo "All the names you're looking for"
fi
