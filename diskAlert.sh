#!/bin/sh
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  echo $output
  used=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $used -ge 90 ]; then
    curl -X POST https://textbelt.com/text --data-urlencode phone='+15559871234' --data-urlencode message="$(date): The partition \"$partition\" on $(hostname) is at $used%" -d key=YOURKEY
  fi
done
