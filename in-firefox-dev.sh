#!/bin/sh

sudo apt-get update

sudo apt-get install -y curl bzip2

url="https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"

curl -s -L $url --output firefox-x-x-x.tar.bz2

tar -xjf firefox-x-x-x.tar.bz2

rm firefox-x-x-x.tar.bz2

sudo mv firefox /opt

cat << EOF | sudo tee /usr/share/applications/firefox-developer-edition.desktop
[Desktop Entry]
Name=Firefox Developer
GenericName=Firefox Developer Edition
Exec=/opt/firefox/firefox %u
Terminal=false
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Type=Application
Categories=Application;Network;X-Developer;
Comment=Firefox Developer Edition Web Browser.
StartupWMClass=Firefox Developer Edition
EOF
