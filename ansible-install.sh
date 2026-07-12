#!/bin/bash
sudo dnf update -y
sudo dnf install -y ansible git

echo "Ansible installed successfully" > /home/ec2-user/install.log
chown ec2-user:ec2-user /home/ec2-user/install.log
