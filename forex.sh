#!/bin/bash
#-x
for i in 1 2 3 4 5
do 
	echo "welcome $i"
done

for day in mon tue wed
do
	echo "have a great $day"
done

for file in $(ls /home/dhruvi/Linux_Fundamental/*.sh)
do
	echo "script files are $file" #if $file outside the echo it will execute all the sh files
done

file1=/etc/passwd 
#/etc/group /etc/shadow /etc/gshadow
user=$1
for user in $file1
do
	[ -f $user ] && echo "$user found" || echo "$user is missing in $file"
done
