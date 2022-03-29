#files that name start with A or B
#!/bin/bash
#file=/home/dhruvi

#for file in ls /home/dhruvi/[AaCc]*
f=find /home/dhruvi/ -iname [AaCc]* -mtime -3 -print
for file in $f
do 
	echo $file
done


