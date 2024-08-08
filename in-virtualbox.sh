#!/bin/sh

sudo apt-get update

sudo apt install --reinstall linux-headers-$(uname -r) virtualbox-dkms dkms

sudo apt-get install -y virtualbox

sudo modprobe vboxdrv

sudo reboot
