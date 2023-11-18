#!/bin/bash
#ps  | grep python3 | cut -d " " -f 6 > .kill.list
ps | grep python3 | cut -d " " -f 3 > .kill.list

cat .kill.list | while read line 
do
   # do something with $line here
   kill $line
  # cat kill.list
done
rm .kill.list
echo '[*] Killed all process'
