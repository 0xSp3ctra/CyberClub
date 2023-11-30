#!/bin/bash

YE='\033[1;33m'
RS='\033[0m'

echo -e "${YE}[+] Installing required packets for the CyberClub${RS}"
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y git make gcc libssl-dev pip && pip3 install PyJWT tqdm

echo -e "${YE}[+] Installing hashid${RS}"
sudo apt install hashid -y

echo -e "${YE}[+] Cloning the CyberClub repo with the exercices${RS}"
git clone https://github.com/0xSp3ctra/CyberClub.git && cd
mv -v CyberClub /home/*/