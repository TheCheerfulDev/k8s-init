#!/bin/bash
sudo sed 's,192.168.178.199,192.168.178.20$2,g' /etc/netplan/00-installer-config.yaml
sudo netplan apply