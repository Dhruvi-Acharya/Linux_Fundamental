#!/bin/bash
echo "name of file is $0"
pass_file=/etc/passwd
echo "first argument is $1"
if test "$1" == ""
then
	echo "please pass the argument"
	exit 1
else
	grep "^$1" $passs_file>/dev/null
	status=$?
	if test $status -eq 0
	then
		echo "user is found"
	else
		echo "uesr not found"
	fi
fi

