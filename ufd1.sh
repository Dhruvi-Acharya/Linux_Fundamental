#!/bin/bash -x
#using input and output fds
exec 3</etc/resol.conf
exec 4>/home/dhruvi/Linux_Fundamental/output3.txt
read -u 3 a b 
echo "data read from fd3 $a $b"
echo "Writing back to fd4- output fd"
echo "Writing first field $a" >&4
echo "Writing second field $b" >&4
exec 3<&-
exec 4<&-

