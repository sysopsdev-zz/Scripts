#!/bin/bash
yum update -y
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org 
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
yum --enablerepo=elrepo-kernel install kernel-ml -y
sed -i 's/saved/0/g' /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
