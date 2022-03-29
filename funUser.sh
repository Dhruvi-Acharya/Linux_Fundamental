#!/bin/bash
#check if root user then allow user to run script and check weather user is exist or not

function add_user()
{
  pass_file=/etc/passwd
  read -p "Enter username " username
  grep "^$username" $pass_file>/dev/null
  status=$?
  if test $status -eq 0
  then
    echo "user is found"
  else
    echo "user not found"
  fi
}

if [ $(id -u) -eq 1000 ]
  then 
     echo "root user"
     add_user
   else
     echo "other user permission denied only root user have the permission"
fi

