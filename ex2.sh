#!/bin/bash
exec 3>/etc/passwd
exec 4</tmp/passwd
echo "data written to fd3" >&3
date >&3
echo "displaying content"
cat <&4
echo "closing the fds"
exec 3<&-
exec 4<&-

