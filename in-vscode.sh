#!/bin/sh

sudo apt-get install -y wget gpg apt-transport-https

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

cat <<EOF | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main
EOF

rm -f packages.microsoft.gpg

sudo apt-get update

sudo apt-get install -y code # or code-insiders