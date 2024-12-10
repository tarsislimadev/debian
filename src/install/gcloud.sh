#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install Google Cloud CLI
echo
sudo apt -y install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt -y cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt -y update
sudo apt -y install google-cloud-cli
