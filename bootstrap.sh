#!/usr/bin/env bash

apt-get update
apt-get install -y linux-headers-$(uname -r) build-essential dkms
apt install -y unzip
apt install -y zip
apt install -y git


curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java
sdk install maven
sdk install gradle

sdk install springboot


apt install -y nginx

apt-get update


echo "dev tools have been installed , you shall begin , my lord "
