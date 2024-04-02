#!/bin/sh

sudo apt-get update

sudo apt-get install -y curl 

url="https://app.warp.dev/download?package=deb"

curl -s -L $url --output warp-terminal.deb

sudo dpkg -i warp-terminal.deb

rm warp-terminal.deb