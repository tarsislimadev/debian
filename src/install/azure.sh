#!/bin/bash

echo
echo Testing sudo
sudo echo OK
echo

echo
echo Installing AWS CLI
echo
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install awscli
sudo apt -y install ca-certificates curl apt-transport-https lsb-release gnupg
curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt -y update
sudo apt -y install azure-cli

echo
echo Version of AWS CLI
echo
az --version
