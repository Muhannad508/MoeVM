#!/usr/bin/env bash

apt-get update

######################### Deb ########################
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
apt-get install -y git

apt-get install -y htop

apt-get install -y fish


################ Flatpak ##########################

#   apt-get install -y flatpak
#   apt-get install -y gnome-software-plugin-flatpak
#   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


##################### Snap ########################
#   snap install code --classic
#   snap install skype --classic
snap install ubuntu-make --classic
snap install cheat
snap install micro --classic
#   snap install node --classic  # nodeJs

################# umake packages from (ubuntu-make) #######################
 umake nodejs

################################################################


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
