#!/bin/python3

import sys #allows us to  enter command line arguments, among other things
import socket 

	
#Define my terget
if len(sys.argv) == 2:
	target = socket.gethostbyname(sys.argv[1]) #Translate a host name to IPV4
	
else :
	print("[*] Invalid amount of arguments.")
	print("[*] syntax: python3 scanner.py <ip>")
	sys.exit()
	

try: 
	file = open("scan_list.txt", "a")
	for port in range(6000, 8000):
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(1) # is a float
		result = s.connect_ex((target,port)) # returns error indication
		#print("Checking port {}".format(port))
		if result == 0:
			#ver= "Port {} is open".format(port)
			#file.wirte(ver+"\n")
			file.write("[*] Port {} is open\n".format(port))
		s.close
	file.close()
	main = open("main.log", "a")
	main.write("\nmain_4.py Completed")
	sys.exit()
except KeyboardInterrupt:
	print("\n[*] Exiting program.")
	sys.exit()
	
except socket.gaierror:
	print("[*] Hostname Could not be resolved.")
	sys.exit()
except socket.error:
	print("[*] Could not connect to server.")
	sys.exit()

