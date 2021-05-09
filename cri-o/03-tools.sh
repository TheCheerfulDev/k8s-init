#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl

sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

TOOLVERSION=1.21.0-00

sudo apt-get update
sudo apt-get install -y kubelet=$TOOLVERSION kubeadm=$TOOLVERSION kubectl=$TOOLVERSION
sudo apt-mark hold kubelet kubeadm kubectl