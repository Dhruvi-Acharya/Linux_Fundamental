#!/bin/bash
read -p "enter number to check positive or not" n
#if test $n >0
if test $n > 0
then 
	echo "number is positive"
else
	echo "number is negative"
fi

