#!/bin/bash
#example script for output file descriptor
file=/home/dhruvi/Linux_Fundamental/output2.txt
exec 3<>$file
#exec 4</etc/passwd
echo "This is data written to combined fd" >&3
ls >&3
echo "displaying the content using input fd"
#cat <&4
echo "closing the fds"
exec 3<&-
#exec 4<&-
