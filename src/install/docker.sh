#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing older Docker installations
echo
sudo apt -y remove --purge docker-* containerd.io
sudo apt -y autoremove --purge

echo
echo Installing Docker and Docker Compose
echo
sudo apt -y update
sudo apt -y install docker-compose podman

echo
echo Setting up Docker
echo
sudo usermod -aG docker "${USER}"
sudo chmod 777 /var/run/docker.sock

echo
echo Docker version
echo
docker --version
docker-compose --version

echo
echo Docker configuration
echo
echo "export DOCKER_CLIENT_TIMEOUT=120" >> ~/.bashrc
echo "export COMPOSE_HTTP_TIMEOUT=120" >> ~/.bashrc
sudo systemctl restart docker 
