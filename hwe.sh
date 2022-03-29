#!/bin/bash
#this script is checking for hardware error

FILE=hw.txt

#store email seetings
#email
#subject
AMESS="warning hardware erroes found"

OK_MESS="OK no hardware error"
WARN_MESS="Error found"

if test ! -f "$FILE"
then
	echo "error"
	exit 1
fi

#okay search for errors in file
error_log=$(grep -c -i "hardware error" $FILE)
if [$error_log -gt 0]
then
	echo "$AMESS"
else
	echo "$OK_MESS"
fi
