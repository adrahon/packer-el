#!/bin/sh
yum -y update

# Install root certificates
yum -y install ca-certificates

# Disable ssh DNS lookup
echo "UseDNS no" >> /etc/ssh/sshd_config
