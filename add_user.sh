#!/bin/bash
read -p "Enter user name" user
echo "Enter password" 
read -s password
adduser "$user"

