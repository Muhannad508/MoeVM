#!/usr/bin/env bash


echo " ###################### Moe customized installation started. the process ID $$"

apt-get update

######################### Required packages########################
apt-get install -y apt-transport-https &&
    ca-certificates &&
    curl &&
    gnupg-agent &&
    software-properties-common
    
    apt-get install -y linux-headers-$(uname -r) build-essential dkms

######################### Apt repository list ########################

apt-get install -y unzip    
apt-get install -y zip      
apt-get install -y git      
apt-get install -y xclip    
#apt-get install -y htop
#apt-get install -y fish



######################### Flatpak ########################
#   apt-get install -y flatpak
#   apt-get install -y gnome-software-plugin-flatpak
#   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


##################### Snap repository list ########################
#   snap install code --classic
#   snap install skype --classic
snap install ubuntu-make --classic
#snap install cheat
#snap install micro --classic
#snap install node --classic

#snap install authy --classic
# sudo snap install intellij-idea-ultimate --classic

################# umake repository list (ubuntu-make) #######################
  umake nodejs

 

################# SDKMAN repository list #######################
  	### init ###
  curl -s "https://get.sdkman.io" | bash

 bash "/home/vagrant/.sdkman/bin/sdkman-init.sh"

#echo "sdkman_auto_answer=true" >> /home/vagrant/.sdkman/etc/config

	### installation list ### 
 #sdk install java 11.0.8.j9-adpt
# sdk install maven
# sdk install gradle

apt-get update
apt-get upgrade --yes

echo " the process ID $! finished. Return status is: $? "



# download chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /home/moe/Downloads

echo "## ==> Packages Installation has been Compeleted. You can now install java and other sdks by running this command:  source /home/vagrant/Setup_System/sdk_installs.sh " <== ##"
