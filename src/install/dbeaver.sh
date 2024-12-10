#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing DBeaver Community Edition
echo

FILENAME="dbeaver-ce_latest_amd64.deb"

sudo apt -y update
sudo apt -y install wget
curl -O "https://dbeaver.io/files/${FILENAME}"
rm -rf "${FILENAME}"

echo
[[ -e "$(which dbeaver)" ]] && echo DBeaver Installed
echo
