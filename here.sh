#!/bin/bash -x
# an example script for here document
tar -cvf /home/dhruvi/Linux_Fundamental/backup/b1.tar.gz /home/dhruvi/Linux_Fundamental/*.sh 2>/dev/null
[ $? -eq 0 ] && echo "backup done" || echo "backup failed"
status=$?
mail -s 'Backup status' dhruviaacharya7001@gmail.com <<draft
date:$(date)
host:$(hostname)
Status:$status
draft
