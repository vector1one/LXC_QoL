#!/bin/bash
#add/remove as you see fit 
#simple customise env script
apt update
/usr/bin/apt install -y htop
/usr/bin/apt install -y curl
/usr/bin/apt install -y git
/usr/bin/apt install -y nmap
/usr/bin/apt install -y gparted
/usr/bin/apt install -y docker
/usr/bin/apt install -y docker-compose
/usr/bin/apt install -y cockpit
sed -i '/^PermitRootLogin/ c\PermitRootLogin yes' /etc/ssh/sshd_config || echo 'PermitRootLogin yes' | sudo tee -a /etc/ssh/sshd_config
service sshd restart

