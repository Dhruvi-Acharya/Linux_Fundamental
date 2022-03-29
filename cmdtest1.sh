#!/bin/bash
#testing cmd arguments
#cmd city
cmd(){
	var=$1
	echo "the name of script is $0"
	echo "first argument is $1"
	echo "second argument is $2"
	echo "total no. of arguments are $#"
	echo "value of arguments are $*"
	echo "value of arguments are $@"
}
echo "function call"
cmd city
echo "giving all second time"
cmd city kia nexa bmw
