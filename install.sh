#!/bin/bash
sudo mkdir /usr/share/pscan
sudo chmod 777 /usr/share/pscan 
cp -r source_pscan /usr/share/pscan
chmod +x pscan
sudo cp pscan /usr/bin/
echo "[*] run pscan "
