#!/bin/bash

YE='\033[1;33m'
RS='\033[0m'

echo -e "${YE}[+] Installing required packets for the CyberClub${RS}"
apt update -y && apt upgrade -y && apt install -y git make gcc libssl-dev pip && pip3 install PyJWT tqdm

echo -e "${YE}[+] Installing hashcat${RS}"
apt install hashcat -y

echo -e "${YE}[+] Installing hashid${RS}"
apt install hashid -y

if command -v john > /dev/null; then
    echo -e "${YE}John already.${RS}"
else
    echo -e "${YE}La commande n'existe pas.${RS}"
    echo -e "${YE}[+] Installing JohnTheRipper${RS}"
    git clone "https://github.com/magnumripper/JohnTheRipper.git" && cd JohnTheRipper/src && ./configure && make -s clean && make -sj4 && cd
    mv -v JohnTheRipper /home/*/
fi

echo -e "${YE}[+] Cloning the CyberClub repo with the exercices${RS}"
git clone https://github.com/0xSp3ctra/CyberClub.git && cd
mv -v CyberClub /home/*/

echo -e "${YE}[+] Downloading rockyou.txt wordlist${RS}"
mkdir -v -p /usr/share/wordlists
wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz && mv rockyou.txt.gz /usr/share/wordlists/ && gunzip -v /usr/share/wordlists/rockyou.txt.gz