
#!/bin/bash

# List of IPs
servers=("192.168.1.1" "192.168.1.2" "192.168.1.3")  # replace with your server IPs

# SSH username and password
username="your_username"  # replace with your SSH username
password="your_password"  # replace with your SSH password

# Loop over each server and run nvidia-smi
for server in "${servers[@]}"; do
  echo "Server: $server"
  sshpass -p $password ssh -o StrictHostKeyChecking=no $username@$server 'nvidia-smi' |
          awk -F'|' '/Default/ {print $3 $4}'  | awk '{print "\tGPU"NR-1"\tUtil:"$4 " \tMemory: "$1 $2 $3}'
done

