#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Brave
echo
sudo apt -y update
sudo apt -y install apt-transport-https curl gnupg
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt -y update
sudo apt -y install brave-browser

echo
echo Setting up Brave
echo
echo 'alias b="brave-browser-stable & " ' >> ~/.bashrc 
echo

echo
echo Brave version
echo
brave-browser --version
echo
echo
