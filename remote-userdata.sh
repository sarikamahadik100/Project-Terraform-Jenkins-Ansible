#!/bin/bash

mkdir -p /home/ubuntu/.ssh

cat <<EOF >/home/ubuntu/.ssh/authorized_keys
${PUBLIC_KEY}
EOF

chown -R ubuntu:ubuntu /home/ubuntu/.ssh
chmod 700 /home/ubuntu/.ssh
chmod 600 /home/ubuntu/.ssh/authorized_keys
