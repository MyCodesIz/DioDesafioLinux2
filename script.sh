#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Download e copia dos arquivo da aplicação..."

cd /temp
wget https://github.com/MyCodesIz/SiteTeste/archive/refs/heads/main.zip 
unzip main.zip
cd SiteTeste
cp -R * /var/www/html/