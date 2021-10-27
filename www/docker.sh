#!/bin/bash

echo Testing sudo
sudo echo OK
echo
echo Removing older Docker installations
echo
sudo apt remove --purge -y docker-ce docker-ce-cli docker-ce-rootless-extras docker-compose containerd.io
echo
echo Installing Docker and Docker Compose
echo
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-compose
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
