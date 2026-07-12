#!/bin/bash

# Update the system
sudo dnf update -y

# Install Ansible
sudo dnf install -y ansible

# Install Git (optional)
sudo dnf install -y git

# Verify installation
ansible --version > /home/ec2-user/ansible_version.txt

# Set ownership
chown ec2-user:ec2-user /home/ec2-user/ansible_version.txt
