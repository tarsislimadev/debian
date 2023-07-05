#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Brave
echo
sudo apt -y update
sudo apt -y install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt -y update
sudo apt -y install brave-browser


echo
echo Setting up Brave
echo
echo 'alias b="brave-browser-stable & " ' >> ~/.bashrc 

echo
echo Brave version
echo
brave-browser --version
echo
echo
