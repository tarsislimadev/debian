#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Node.js LTS
echo
sudo apt -y update
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt -y install nodejs

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
