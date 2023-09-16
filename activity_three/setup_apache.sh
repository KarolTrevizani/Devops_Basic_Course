#!/bin/bash

# Atualiza o servidor
sudo apt update -y
sudo apt upgrade -y

# Instala o apache2 e o unzip
sudo apt install -y apache2 unzip

# Baixa a aplicação no diretório /tmp
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompacta e copia os arquivos da aplicação para o diretório padrão do apache
unzip /tmp/main.zip -d /tmp
sudo cp -r /tmp/linux-site-dio-main/* /var/www/html/

# Reinicia o apache para as mudanças surtirem efeito
sudo systemctl restart apache2
