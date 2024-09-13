#!/bin/bash
##################SSH to multiple instances and end#####################
########
########
ip_addresses=("192.168.1.100" "192.168.1.101" "192.168.1.102")  # Replace with your IP addresses
commands=("ls -l" "pwd")  # Replace with your desired commands

for ip in "${ip_addresses[@]}"; do
    ssh ubuntu@$ip <<EOF
        ${commands[@]}
        exit
EOF
done
