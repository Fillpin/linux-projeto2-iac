#!/bin/bash

echo -e "Iniciando código...\nAtualizando servidor..." #Atualizar o servidor;
apt update
apt upgrade -y

echo -e "\nInstalando o Apache..." #Instalar o apache2;
apt install apache2 -y

echo -e "\nInstalando o Unzip..." #Instalar o unzip;
apt install unzip -y

echo -e "\nBaixando os Arquivos..." #Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo -e "\nCopiando os arquivos para o Apache..." #Copiar os arquivos da aplicação no diretório padrão do apache;
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html
