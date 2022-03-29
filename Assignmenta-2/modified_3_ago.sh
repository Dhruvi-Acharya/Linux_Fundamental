# files that were modified 3 days ago
#!/bin/bash
#f=find /home/dhruvi/CPP -type f -newerat "3 days ago"

f=find /home/dhruvi -iname "[AaCc]*" -mtime -3 -print

for file in $f
do
	echo $file
done
