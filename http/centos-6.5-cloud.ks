# Install
install
text
reboot
cdrom
zerombr
skipx
bootloader --location=mbr
firstboot --disabled

# Regional settings
lang en_GB.UTF-8
keyboard uk
timezone --utc Europe/London

# Network
network --bootproto=dhcp
firewall --enabled --service=ssh

# Partitioning
clearpart --all --initlabel
part / --fsoptions=discard --fstype=ext4 --grow --size=1
part swap --size=512

# Authtentication
rootpw redhat
authconfig --enableshadow --passalgo=sha512

# install only base packages and openssh
%packages --nobase
@core
openssh-server
openssh-clients
#qemu-guest-agent
%end

