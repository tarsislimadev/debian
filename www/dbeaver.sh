#!/bin/bash

echo Testing sudo
sudo echo OK
echo 
echo Installing DBeaver Community Edition
echo 
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo apt-get update -y
sudo apt-get install -y dbeaver-ce
echo 
[[ -e "$(which dbeaver)" ]] && echo DBeaver Installed 
echo 
