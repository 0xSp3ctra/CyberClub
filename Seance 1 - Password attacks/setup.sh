#!/bin/bash

YE='\033[1;33m'
RS='\033[0m'

echo -e "${YE}[+] Installing required packets for the CyberClub${RS}"
sudo apt update -y && sudo apt install -y pip hashcat keepassxc

echo -e "${YE}[+] Installing hashid${RS}"
sudo apt install hashid -y

pip install tqdm --break-system-packages
pip install PyJWT --break-system-packages