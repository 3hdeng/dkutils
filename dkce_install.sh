#!/bin/bash
sudo apt-get remove docker docker-engine docker.io

sudo apt-get update
sudo apt-get install \
     linux-image-extra-$(uname -r) \
     linux-image-extra-virtual


sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 

#Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.

sudo apt-key fingerprint 0EBFCD88
# will fail for the first time to fingerprint ???

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository

sudo apt-get update 
#&& apt-cache policy docker-engine
#sudo apt-get install -y  --force-yes docker-ce
sudo apt-get install docker-ce
#sudo usermod -aG docker $(whoami)

