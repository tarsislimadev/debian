#!/bin/bash

echo Testing sudo
sudo echo OK
echo
echo Installing Docker
echo
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce docker-compose
echo
echo Setting up Docker
echo
sudo usermod -aG docker "${USER}"
echo
echo
echo Docker version
echo
docker --version
docker-compose --version
