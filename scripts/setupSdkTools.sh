#!/usr/bin/env bash





if [ ! -d "/home/vagrant/.local/share/umake" ]; then sudo snap install ubuntu-make --classic ; fi

if [ ! -d "/home/vagrant/.local/share/umake/java/adoptopenjdk" ]; then 
umake java
umake maven 
fi


if [ ! -d "/home/vagrant/.local/share/umake/nodejs/nodejs-lang" ]; then 
umake nodejs
node_path = "/home/vagrant/.local/share/umake/nodejs/nodejs-lang/bin"
echo "Nodejs has been installed"
fi

#umake nodejs
#umake java

npm install -g tldr
npm install -g @vue/cli
npm install -g json-server
npm install -g http-server



# . "/vagrant/scripts/setupWebPkgs.sh"

echo "Setup as Compeleted"

 

#curl -s "https://get.sdkman.io" | bash

#bash "/home/vagrant/.sdkman/bin/sdkman-init.sh"

#cmd= "install java"

#echo "${sdk} install java"

# sdk install maven
 # sdk install gradle
