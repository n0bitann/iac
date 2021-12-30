#!/bin/bash
#TODO install curl wget docker docker-compose pip3
source config.sh

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    wget \
    curl \
    gnupg \
    python3-pip \
    lsb-release


echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo Hello, $GITNAME
echo Your email $GITEMAIL