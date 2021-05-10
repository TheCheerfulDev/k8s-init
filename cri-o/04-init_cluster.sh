#!/bin/bash

sudo kubeadm init --pod-network-cidr 192.10.0.0/16 --apiserver-advertise-address 192.168.178.200 | tee ~/kubeadm-init.log