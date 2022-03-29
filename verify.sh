#!/bin/bash
#this script is to verify the user password
read -s -p "enter the password " pass
if test $pass == "ei"
then 
	echo "password verified"
else
	echo "access denied"
fi
