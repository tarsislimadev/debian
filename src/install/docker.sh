#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing older Docker installations
echo
sudo apt remove --purge -y docker-* containerd.io
sudo apt autoremove --purge -y

echo
echo Installing Docker and Docker Compose
echo
sudo apt-get update
sudo apt-get install -y docker-compose

echo
echo Setting up Docker
echo
sudo chmod 777 /var/run/docker.sock
sudo usermod -aG docker "${USER}"

echo
echo
echo Docker version
echo
docker --version
docker-compose --version
