#!/bin/bash
#menu driven script
read -p "enter 1. Display Date 2. Display username 3. netwrok information" choice
while [$choice -lt 4]
do
case $choice in
	1)
		echo "date is: $(date)"
		;;
	2)
		echo "username is: " whoami
		;;
	3)
		echo "network informations are:" ifconfig
		;;
	*)
		echo "please enter proper choice"
esac
done

