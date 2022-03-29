#!/bin/bash
#echo "name of file is $0"
pass_file=/etc/passwd
#echo "first argument is $1"

userexist(){
 	grep "^$1" $passs_file >/dev/null
	status=$?
	if test $status -eq 0
	then
		echo "user is found";
	else
		echo "uesr not found";
	fi
}
userexist dhruvi


#if test whoami == "dhruvi"
#then
#  echo whoami
#else
#  echo "other user"
#fi


<<com
function checkuser()
{
   if [ $(id -u) -eq 2000 ]
   then 
     echo "root user"
   else
     echo "other user"
   fi
}

checkuser
com


