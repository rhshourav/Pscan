#!/bin/bash
ping -c1 $1 > .ip.log
ip_check=$( cat .ip.log | grep -o time= )
#ip=$( cat .ip.log | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" ) 
#ip=$(cat .ip.log | grep PING | cut -d " " -f 3 | tr -d ")" | tr -d "(")
if [[ $ip_check == "time=" ]]
 then
 	echo "ok"

 fi
