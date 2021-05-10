#!/bin/bash

sudo swapoff -a
sudo sed -i 's,/swap.img,#/swap.img,g' /etc/fstab

sudo apt-get update && sudo apt-get upgrade -y