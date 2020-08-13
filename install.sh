#!/usr/bin/env bash


echo " ###################### Moe customized installation started. the process ID $$"

apt-get update

######################### Required packages########################
apt-get install -y apt-transport-https &&
    ca-certificates &&
    curl &&
    gnupg-agent &&
    software-properties-common
    #apt-get install -y linux-headers-$(uname -r) build-essential dkms

######################### Apt repository list ########################

apt-get install -y unzip    
apt-get install -y zip      
apt-get install -y git      
apt-get install -y xclip    
apt-get install -y htop

#apt-get install -y fish



######################### Flatpak ########################

#   apt-get install -y flatpak
#   apt-get install -y gnome-software-plugin-flatpak
#   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


##################### Snap repository list ########################
#   snap install code --classic
#   snap install skype --classic
snap install ubuntu-make --classic
snap install cheat
snap install micro --classic

#snap install authy --classic
# snap install node --classic  # nodeJs

################# umake repository list (ubuntu-make) #######################
 umake nodejs

################################################################


apt-get update
apt-get upgrade --yes
 

################# SDKMAN repository list #######################
  	### init ###
 curl -s "https://get.sdkman.io" | bash
 #source "/home/vagrant/.sdkman/bin/sdkman-init.sh"
 #source "$HOME/.sdkman/bin/sdkman-init.sh"
 source "${HOME}/.sdkman/bin/sdkman-init.sh"

	### installation list ### 
sdk install java
sdk install maven
sdk install gradle


echo " the process ID $! finished. Return status is: $? "



# download chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /home/moe/Downloads

echo "## ==> Packages Installation has been Compeleted <== ##"
