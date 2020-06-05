#!/bin/bash -eux

# Disable daily apt unattended updates
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

# Update & Upgrade
apt -y update
apt -y upgrade

# Delete unneeded files
rm -f /home/vagrant/*.sh

# Zero out the rest of the free space using dd, then delete the written file
dd if=/dev/zero of=zerofill bs=1M
rm zerofill

# Call sync to prepare for shutdown
sync