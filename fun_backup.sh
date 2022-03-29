#!/bin/bash
#use of FUNCNAME
backup() {
	local d=$1
	[ ! -d $d ] && { echo "$FUNCNAME (): directory is not found"; exit 1 ;}
}
#echo " Backup started"
backup $1
