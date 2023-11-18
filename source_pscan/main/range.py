#!/bin/python3

import sys #allows us to  enter command line arguments, among other things
import socket 
from datetime import datetime
from tqdm import tqdm



#Define my terget

target = socket.gethostbyname(sys.argv[1]) #Translate a host name to IPV4
port = int(sys.argv[2])



try: 
	file = open("scan_list.txt", "a")
	for port in tqdm(range(0, port), desc="Scanning Ports..."):
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(1) # is a float
		result = s.connect_ex((target,port)) # returns error indication
		#print("Checking port {}".format(port))
		if result == 0:
			#ver= "Port {} is open".format(port)
			#file.wirte(ver+"\n")
			file.write("[*] Port {} is open\n".format(port))
		pass
		s.close
	file.close()
	main = open("main.log", "a")
	main.write("Range.py Completed")
	main.close()
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

