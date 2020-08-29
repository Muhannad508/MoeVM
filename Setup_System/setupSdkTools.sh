#!/usr/bin/env bash




if [ ! -d "/home/vagrant/.local/share/umake" ]; then sudo snap install ubuntu-make --classic ; fi

if [ ! -d "/home/vagrant/.local/share/umake/java/adoptopenjdk" ]; then umake java; fi


if [ ! -d "/home/vagrant/.local/share/umake/nodejs/nodejs-lang" ]; then umake nodejs; fi

#umake nodejs
#umake java

npm install -g tldr
npm install -g @vue/cli


# . "/vagrant/Setup_System/setupWebPkgs.sh"

echo "Setup as Compeleted"

 

#curl -s "https://get.sdkman.io" | bash

#bash "/home/vagrant/.sdkman/bin/sdkman-init.sh"

#cmd= "install java"

#echo "${sdk} install java"

# sdk install maven
 # sdk install gradle
