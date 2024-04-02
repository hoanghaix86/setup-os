#!/bin/sh

sudo apt-get update

sudo apt-get install -y curl 

url="https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"

curl -s -L $url --output firefox-x-x-x.tar.bz2

tar -xjf firefox-x-x-x.tar.bz2

rm firefox-x-x-x.tar.bz2

sudo mv firefox /opt

desktop_file=~/.local/share/applications/firefox-developer-edition.desktop

if [ -f "$desktop_file" ]
then
    rm $desktop_file
fi

cat > $desktop_file << EOF
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
