#!/bin/bash

sudo apt update

sudo apt install wget unzip -y

wget https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_linux_amd64.zip

unzip vagrant_2.4.1_linux_amd64.zip

rm vagrant_2.4.1_linux_amd64.zip

sudo mv vagrant /usr/local/bin/vagrant

sudo chown $USER.$USER /usr/local/bin/vagrant

sudo su -
mkdir /etc/vbox/
cd /etc/vbox/
echo '* 0.0.0.0/0 ::/0' > /etc/vbox/networks.conf
chmod 644 /etc/vbox/networks.conf