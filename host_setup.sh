#!/bin/bash
if [ $# -lt 2 ]; then
    echo "<NODE NAME> <LAST NUMBER OF IP>"
    exit 1
fi
sudo sed -i "s,base,$1,g" /etc/hosts
sudo sed -i "s,base,$1,g" /etc/hostname
sudo sed -i "s,192.168.178.199,192.168.178.20$2,g" /etc/netplan/00-installer-config.yaml
sudo netplan apply
sudo reboot
