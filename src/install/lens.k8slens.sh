#!/bin/bash

# https://docs.k8slens.dev/getting-started/install-lens/#install-lens-desktop-from-the-apt-repository

echo Testing sudo
sudo echo OK

echo
echo Install Lens
echo
curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null
sudo apt -y update
sudo apt -y install lens

echo
echo Install KVM
echo
lens-desktop --version
