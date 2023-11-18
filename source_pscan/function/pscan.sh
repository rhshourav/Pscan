#!/bin/bash
bash function/mkd.sh
if [[ $1 == "-h" ]] || [[ $1 == "--help" ]] || [[ $1 == "help" ]]
then
	cat function/help
	exit
elif [[ $1 == "deshoha" ]]
then
	bash function/baner.sh
	exit
fi









dat=$(date)
touch scan_list.txt
rm scan_list.txt
touch scan_list.txt
bash function/lol.sh

trap '{ echo -e "\nHey, you pressed Ctrl-C.  Time to quit." ; bash function/kill.sh; bash function/exms.sh ; exit 1; }' INT
#Banner
cat .banner | lolcat 
if [[ $1 == "-s" ]] && [[ $2 != "" ]] && [[ $3 == "" ]]
then
	
	bash function/ip_sn.sh $2
	exit
	
fi


# Scan Local Net work

if [[ $1 == "-m" ]] && [[ $2 == "" ]]
then
	bash function/local_ipS.sh
	exit
fi
if [[ $1 == "-m" ]] && [[ $2 == "-o" ]]
then
	bash function/local_ipS.sh '-o'
	exit
fi





if [[ $1 == "-s" ]] && [[ $2 != "" ]] && [[ $3 == "-o" ]]
then
	
	bash function/ip_sn.sh $2 y
	exit
	
fi
		









if [[ $1 == "" ]] || [[ $1 == "-o" ]]
then
	echo -e "[*] Enter Your IP-Address"
	#Taking IP Address
	read ip_addr 
	ipcheck=$(bash function/ip_check.sh $ip_addr)
else
	ipcheck=$(bash function/ip_check.sh $1)
fi

if [[ $ipcheck != "ok" ]]
then
	echo -e "\e[38;05;196m[*] Invalid IP-Address\e[0m"
	exit
fi

ip=$(cat .ip.log | grep PING | cut -d " " -f 3 | tr -d ")" | tr -d "(")
echo -e "\n\n\e[38;05;196m[*] Starting Port Scan On $ip address\e[0m\n\n"
echo -e "\n Date = $dat \n IPaddress=> $ip" >> .Pscan.log
file_name=$(cat .ip.log | grep PING | cut -d " " -f 3 | tr -d ")" | tr -d "(" | tr -d ".")







#Getting Port

if [[ $2 == "" ]]
then
	echo -e "[*] How many Port You want to scan ?\n[if nothing added then it will as all port fast scan]"
	read port
elif [[ $2 == "-o" ]]
then
	echo -e "[*] How many Port You want to scan ?\n[if nothing added then it will as all port fast scan]"
	read port
else 
	port=$2

fi


# geting user input

if [[ $3 == "-o" ]]
then
	file_co=y
	
elif [[ $1 == "-o" ]]
then
	file_co=y
	
elif [[ $2 == "-o" ]]
then
	file_co=y
	
else

	echo -e "[*] Do You Wish To Save Result(y/n)"
	read file_co
fi




if [[ $file_co == "y" ]]
then
 echo "[*] File name Will be port$file_name.log"
fi
echo -e "\n\n$dat" >> main.log








#Function
loding () {
	echo -ne '|>>>                                                |\r' 
# some task
	sleep 1
	echo -ne '|>>>>>>>>>>>>>>>>                                   |\r' 
# some task
	sleep 1
	echo -ne '|>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                   |\r'
# some task
	sleep 1
	echo -ne '|>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>          |\r'
# some task
	sleep 1
	echo -ne '|>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>|\r'
	echo -ne '\n'

}

if [[ $port == "" ]]
then

	bash function/fast_ports/all_port.sh $ip
elif [[ $port == "500" ]]
then
	bash function/500p.sh $ip
elif [[ $port == "1000" ]]
then
	bash function/fast_ports/1000_port.sh $ip
elif [[ $port == "4000" ]]
then
	bash function/fast_ports/4000_port.sh $ip
elif [[ $port == "6000" ]]
then
	bash function/fast_ports/6000_port.sh $ip
elif [[ $port == "8000" ]]
then
	bash function/fast_ports/8000_port.sh $ip
elif [[ $port == "10000" ]]
then
	bash function/fast_ports/10000_port.sh $ip
elif [[ $port == "12000" ]]
then
	bash function/fast_ports/12000_port.sh $ip
elif [[ $port == "14000" ]]
then
	bash function/fast_ports/14000_port.sh $ip
elif [[ $port == "16000" ]]
then
	bash function/fast_ports/16000_port.sh $ip
elif [[ $port == "18000" ]]
then
	bash function/fast_ports/18000_port.sh $ip
elif [[ $port == "20000" ]]
then
	bash function/fast_ports/20000_port.sh $ip
elif [[ $port == "22000" ]]
then
	bash function/fast_ports/22000_port.sh $ip

elif [[ $port == "24000" ]]
then
	bash function/fast_ports/24000_port.sh $ip
elif [[ $port == "26000" ]]
then
	bash function/fast_ports/26000_port.sh $ip
elif [[ $port == "28000" ]]
then
	bash function/fast_ports/28000_port.sh $ip
elif [[ $port == "30000" ]]
then
	bash function/fast_ports/30000_port.sh $ip
elif [[ $port == "32000" ]]
then
	bash function/fast_ports/32000_port.sh $ip
elif [[ $port == "34000" ]]
then
	bash function/fast_ports/34000_port.sh $ip
elif [[ $port == "36000" ]]
then
	bash function/fast_ports/36000_port.sh $ip
elif [[ $port == "38000" ]]
then
	bash function/fast_ports/38000_port.sh $ip
elif [[ $port == "40000" ]]
then
	bash function/fast_ports/40000_port.sh $ip
elif [[ $port == "42000" ]]
then
	bash function/fast_ports/42000_port.sh $ip
	
elif [[ $port == "44000" ]]
then
	bash function/fast_ports/44000_port.sh $ip
elif [[ $port == "46000" ]]
then
	bash function/fast_ports/46000_port.sh $ip
elif [[ $port == "48000" ]]
then
	bash function/fast_ports/48000_port.sh $ip
elif [[ $port == "50000" ]]
then
	bash function/fast_ports/50000_port.sh $ip
elif [[ $port == "52000" ]]
then
	bash function/fast_ports/52000_port.sh $ip

elif [[ $port == "54000" ]]
then
	bash function/fast_ports/54000_port.sh $ip
elif [[ $port == "56000" ]]
then
	bash function/fast_ports/56000_port.sh $ip
elif [[ $port == "58000" ]]
then
	bash function/fast_ports/58000_port.sh $ip
elif [[ $port == "60000" ]]
then
	bash function/fast_ports/60000_port.sh $ip
elif [[ $port == "62000" ]]
then
	bash function/fast_ports/62000_port.sh $ip
elif [[ $port == "64000" ]]
then
	bash function/fast_ports/64000_port.sh $ip
else
	bash function/range.sh $ip $port
fi

























var=$(ps -l | grep python3)
#echo $var
while [[ $var != "" ]]
do	
	clear
	cat .banner | lolcat
	 #echo "[*] File name Will be port$file_name.log"
	#echo "working"
	loding
	var=$(ps -l | grep python3)
	
done

echo "Done"
echo -e "[*] \e[38;05;46mResults:\n\e[0m"
res=$(cat scan_list.txt)

if [[ $res == "" ]]
then
	echo -e "[*]\e[38;05;196m Found Nothing\e[0m"
fi

 
cat scan_list.txt | lolcat 
da=$(date)
if [[ $file_co == "y" ]]
then
	echo -e "\n[*] $da \n" > /opt/output_pscan/port$file_name.log
	cat scan_list.txt >> /opt/pscan_output/port$file_name.log
	echo "[*] File name is port$file_name.log"
	echo "[*] FIle is in /opt/pscan_output"

fi
















