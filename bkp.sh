#!/bin/bash

DEST=/home/dhruvi/Linux_Fundamental/backup
SRC=/home/dhruvi/Linux_Fundamental

[! -d $DEST] && mkdir -p $DEST

[! -d $SRC] && {echo "$SRC does not exist"}

echo "backping in the directory $DEST"
tar zcvf $DEST/backup.tar.gz $SRC 2>/dev/null
status=$?
[$status -eq 0] && echo "backup done" || echo "failed"

