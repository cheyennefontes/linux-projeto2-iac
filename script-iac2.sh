#!/bin/bash

echo 'Atualizando o servidor...'

# Atualizando servidor
apt-get update -y
apt-get upgrade -y

# Instalando apache
apt-get install apache2 -y
# Ativando apache
systemctl start apache2
# Instalando unzip
apt-get install unzip -y

echo 'Baixando e copiando arquivos da aplicação...'

# Abrindo a pasta /tmp
cd /tmp
# Baixando pasta de arquivos da aplicação
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
# Descompactando a pasta
unzip main.zip
# Abrindo pasta e copiando arquivos para a pasta do apache
cd linux-site-dio-main
cp -R * /var/www/html/

echo 'Feito.'

# Abrindo pasta do apache para conferir arquivos 
cd /var/www/html/
ls

