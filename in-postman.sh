curl -L https://dl.pstmn.io/download/latest/linux_64 -o Postman.tar.gz

tar -xzf Postman.tar.gz

rm Postman.tar.gz

sudo rm -rf  /opt/Postman

sudo mv Postman /opt/Postman

sudo chown $USER:$USER /opt/Postman

cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/icons/icon_128x128.png
Terminal=false
Type=Application
Categories=Development;
EOL
