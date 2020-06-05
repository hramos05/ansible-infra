#!/bin/bash -eux

# Install Cockpit
dnf install cockpit -y
systemctl enable --now cockpit.socket
firewall-cmd --add-service=cockpit
firewall-cmd --add-service=cockpit --permanent

# Set hostname
hostnamectl set-hostname T-CentOS8

# Zero out the rest of the free space using dd, then delete the written file
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Call sync to prepare for shutdown
sync