#!/bin/sh
df -H | grep -vE '^Filesystem|tmpfs|cdrom|loop0|loop1|loop2|loop3|loop4|loop5|loop6' | awk '{ print $5 " " $1 }' | while read output;
do
  echo $output
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )

done
