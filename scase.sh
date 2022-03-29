#!/bin/bash
# case example script
opt=$1
file=$2
read -p "enter the way wish to take the backup " bktype
case $bktype in
tar|zip|script) echo "compressing the file using tar"
		;;
	nas) echo "compressing the file using gzip"
		;;
	dump) echo "using mysql dump for backup"
		;;
*)
		echo "enter either tar or zip or dump"
esac

case $opt in
	-e|-E)
		echo "opening the file for editing"
		;;
	-c|-C)
		echo "showing the content of file"
		;;
	*)
		echo "arguments are missing"
		echo "usage: command -e|-E or -c|-C filename"
esac
