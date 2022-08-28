#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrede -y

echo "Instalando apache2 e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando site do repositório..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos para /var/www/html..."
cp -R * /var/www/html/

echo "Finalizado..."