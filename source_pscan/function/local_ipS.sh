#!/bin/bash

ip=$(ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v 127.0.0.1 | grep -v 172.17.0.1)

if [[ $1 == "-o" ]]
then
	bash function/ip_sn_local.sh $ip y
else
	bash function/ip_sn_local.sh $ip
fi
