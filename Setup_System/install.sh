#!/usr/bin/env bash

apt-get update

# APT packages
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
apt-get install -y git

apt-get install -y htop

apt-get install -y fish


apt-get install -y flatpak
apt-get install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


#  *** SNAP packages  ****
#   snap install code --classic
#   snap install skype --classic
snap install ubuntu-make --classic
snap install cheat
snap install micro --classic


# install make from snap then download some programming langs / frameworks
umake nodejs

apt-get update
apt-get upgrade --yes
 

# SDK tool:

# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# source "/home/vagrant/.sdkman/bin/sdkman-init.sh"
#sdk java

# download chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /home/moe/Downloads

echo "## ==> Packages Installation has been Compeleted <== ##"
