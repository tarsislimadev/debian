#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing DBeaver Community Edition
echo

sudo apt -y update
sudo apt -y install wget
FILENAME="dbeaver-ce_24.3.0_amd64.deb"
wget "https://github.com/dbeaver/dbeaver/releases/download/24.3.0/${FILENAME}"
sudo apt -y install "${FILENAME}"
rm -rf "${FILENAME}"

echo
[[ -e "$(which dbeaver)" ]] && echo DBeaver Installed
echo
