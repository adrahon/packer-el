#!/bin/sh
rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
yum -y clean all
yum history new
truncate -c -s 0 /var/log/yum.log
