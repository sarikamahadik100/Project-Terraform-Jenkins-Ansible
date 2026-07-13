#!/bin/bash

# Update package list
apt update -y

# Install Ansible and Git
apt install -y ansible git

# Create a log file
echo "Ansible installed successfully" > /home/ubuntu/install.log

# Set ownership
chown ubuntu:ubuntu /home/ubuntu/install.log
