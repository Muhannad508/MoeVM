#!/usr/bin/env bash

apt-get update


apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
apt-get install -y git
#apt-get install -y openjdk-13-jdk

apt-get install -y flatpak
apt-get install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# curl -s "https://get.sdkman.io" | bash
# $ source "$HOME/.sdkman/bin/sdkman-init.sh"


 sdk install java 
 sdk install maven 
 sdk install gradle 
 sdk install springboot

snap install code --classic
snap install skype --classic
 snap install gitkraken

sudo add-apt-repository ppa:amanusk/python-s-tui
sudo apt-get update
sudo apt-get install python3-s-tui

apt-get install htop

#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /home/moe/Downloads

echo "dev tools have been installed , you shall begin , my lord "
