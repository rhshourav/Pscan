#!/bin/bash


#Function
loding () {
	echo -ne '>>>                       |\r' 
# some task
	sleep 1
	echo -ne '>>>>>>>                   |\r' 
# some task
	sleep 1
	echo -ne '>>>>>>>>>>>>>>            |\r'
# some task
	sleep 1
	echo -ne '>>>>>>>>>>>>>>>>>>>>>>>    |\r'
# some task
	sleep 1
	echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>|\r'
	echo -ne '\n'

}




ipcheck=$(bash function/ip_check.sh $1)
if [[ $ipcheck == "ok" ]]
then
	ip_checked=$(cat .ip.log | grep PING | cut -d " " -f 3 | tr -d ")" | tr -d "(")
	echo $ip_checked > ip

	ip_a=$(cat ip | cut -d "." -f 1)
	ip_b=$(cat ip | cut -d "." -f 2)
	ip_c=$(cat ip | cut -d "." -f 3)

	rm ip





	bash function/ipsweep.sh "$ip_a.$ip_b.$ip_c"





	#echo "$ip_a.$ip_b.$ip_c."

	

	var=$(ps |grep tr)
	#echo $var
	while [[ $var != "" ]]
	do
		clear
		cat .banner | lolcat
		echo
		echo
		echo "Doing Ip Sweep On $ip_checked/24"
		echo
		echo
		#echo "working"
		loding 
		var=$(ps |grep tr)
	done






	echo -e "[*] \e[38;05;46mResults:\n\e[0m"
	res=$(cat ip)

	if [[ $res == "" ]]
	then
		echo -e "[*]\e[38;05;196m Found Nothing\e[0m"
	fi

 
	cat ip | lolcat 
	file_name=$(date |cut -d " " -f5 | tr -d ":")
	da=$(date)
	if [[ $2 == "y" ]]
	then
		
		echo -e "\n\n\e[38;05;46m[*] File Name Is ip$file_name.log\e[0m\n\n"
		echo -e "\n[*] $da \n">  output/ip$file_name.log
		cat ip >> output/ip$file_name.log
	
	fi

else
	echo -e "[*] \e[38;05;196mInvalid IP-Address\e[0m"
	exit

fi
rm ip

