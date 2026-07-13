#!/bin/bash

# Update packages
apt update -y

# Install Ansible and Git
apt install -y ansible git

# Generate SSH key if it doesn't already exist
sudo -u ubuntu ssh-keygen -t ed25519 -f /home/ubuntu/.ssh/id_ed25519 -N ""

# Log
echo "Ansible installed successfully" > /home/ubuntu/install.log
chown ubuntu:ubuntu /home/ubuntu/install.log
