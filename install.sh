#!/usr/bin/env bash
echo 'Actualizando librerías...'
sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y								#Git
sudo apt install curl -y
sudo curl -o- https://raw.githubusercontent.com/ddionich/my-linux-pc-config/install.sh | sudo bash
echo 'Actualizadas librerías.'

echo 'Instalando programas prioritarios...'
sudo apt install snap -y							#Snap
sudo snap install teams								#Microsoft Teams
sudo apt install openconnect -y						#VPN
sudo snap install chromium							#Chromium
sudo apt install openjdk-8-jdk -y					#JDK 8
sudo apt install maven -y							#Maven
sudo snap install intellij-idea-ultimate --classic	#IntelliJ
echo 'Instalados programas prioritarios.'

echo 'Instalando entorno de desarrollos...'
sudo snap install sublime-text --classic
sudo snap install datagrip --classic
sudo snap install webstorm --classic
sudo snap install pycharm-professional --classic
sudo snap install rider --classic
echo 'Instalados entornos de desarrollo.'

echo 'Instalando otras apps Snap...'
sudo snap install discord
sudo snap install postman
sudo snap install spotify
sudo snap install kolourpaint
echo 'Instaladas otras apps Snap.'

echo 'Instalando herramientas utiles...'
sudo apt install grep -y
sudo apt install filezilla -y
sudo apt install net-tools -y
sudo apt install preload -y
sudo apt install gnome-shell -y
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extensions -y
sudo apt install zsh -y
sudo apt install wget -y
echo 'Instaladas herramientas utiles.'

echo 'Instalando Docker...'
sudo apt update
sudo apt install ca-certificates -y
sudo apt install curl -y
sudo apt install gnupg -y
sudo apt install lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt install docker-ce -y
sudo apt install docker-ce-cli -y
sudo apt install containerd.io -y
echo 'Instalado Docker.'

echo 'Instalando JDKs...'
sudo apt install openjdk-11-jdk -y
sudo apt install openjdk-13-jdk -y
sudo apt install openjdk-16-jdk -y
sudo apt install openjdk-17-jdk -y
echo 'Instalados JDKs.'

echo 'Instalando NVM & Node.js. v14.19.0..'
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
sudo nvm install 14.19.0
echo 'Instalado NVM & Node.js.'

echo 'Instalando mis extensiones de gnome...'
mv -v gnome-extensions/* ~/.local/share/gnome-shell/extensions/
echo 'Instaladas mis extensiones de gnome.'

echo '¡Finalizada ejecución!'