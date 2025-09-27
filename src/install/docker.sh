#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing older Docker installations
echo
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove -y --purge $pkg; done
sudo apt -y autoremove --purge
sudo apt -y update

echo
echo Installing Docker and Docker Compose
echo
sudo apt -y update
sudo apt-get -y install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo
echo Setting up Docker
echo
sudo usermod -aG docker "${USER}"
sudo chmod 777 /var/run/docker.sock

echo
echo Docker version
echo
docker --version
docker compose --version

echo
echo Docker configuration
echo
echo "export DOCKER_CLIENT_TIMEOUT=120" >> ~/.bashrc
echo "export COMPOSE_HTTP_TIMEOUT=120" >> ~/.bashrc
sudo systemctl restart docker 
