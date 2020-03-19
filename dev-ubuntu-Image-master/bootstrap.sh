#!/usr/bin/env bash

apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

apt-get install -y linux-headers-$(uname -r) build-essential dkms

apt-get install -y unzip
apt-get install -y zip
apt-get install -y git
#apt-get install -y openjdk-13-jdk

# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"

#sdk install java
#sdk install maven
#sdk install gradle
#sdk install springboot



apt-get install -y apache2




echo "Dev Envirment has been Installed. v1.0  "
