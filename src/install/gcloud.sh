#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install Google Cloud CLI
echo
sudo apt-get -y update
sudo apt-get -y install apt-transport-https ca-certificates gnupg curl
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get -y update
sudo apt-get -y install google-cloud-cli

echo
echo Google Cloud CLI version
echo
gcloud --version
