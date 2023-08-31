#!/bin/bash

echo Testing sudo
sudo echo OK

NODE_MAJOR=18

echo
echo "Installing Node.js v${NODE_MAJOR}"
echo
sudo apt -y update
sudo apt -y install ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL "https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key" | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_${NODE_MAJOR}.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt -y update
sudo apt -y install nodejs -y

echo
echo Installing development tools
echo
sudo apt -y install gcc g++ make

echo
echo Installing Yarn package manager
echo
sudo apt -y update
sudo apt -y install yarn

echo node --version
node --version
echo npm --version
npm --version
echo yarn --version
yarn --version
