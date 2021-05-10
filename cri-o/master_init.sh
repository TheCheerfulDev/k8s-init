#!/bin/bash

bash ./00-pre_req.sh
bash ./01-iptables.sh
bash ./02-cri-o.sh
bash ./03-tools.sh
bash ./04-init_cluster.sh
bash ./05-cni.sh