#!/bin/bash

echo Testing sudo

sudo echo OK

echo 
echo Installing Teams
echo 
wget --output-file=teams.deb 'https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x416&culture=pt-br&country=BR' > /dev/null
sudo apt update -y
sudo apt install -y ./teams.deb
echo
echo Teams version
echo
[[ $(command -v teams) ]] && echo Teams Installed
