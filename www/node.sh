#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Node.js LTS
echo
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs

echo
echo Installing development tools
echo
sudo apt-get install gcc g++ make

echo
echo Installing Yarn package manager
echo
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn
sudo apt-get update

echo node --version
node --version
echo npm --version
npm --version
echo yarn --version
yarn --version
