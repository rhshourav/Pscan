#!/bin/bash
var=$(file /opt/pscan_output)
if [[  $var != "/opt/pscan_output: directory" ]]
then
	mkdir /opt/pscan_output
	exit
fi


