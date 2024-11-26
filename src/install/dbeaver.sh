#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing DBeaver Community Edition
echo

sudo apt -y update
sudo apt -y install wget
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

echo
[[ -e "$(which dbeaver)" ]] && echo DBeaver Installed
echo

