#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing .Net Core
echo
sudo apt -y update
curl -O https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb
sudo apt -y install ./packages-microsoft-prod.deb 
rm -rf ./packages-microsoft-prod.deb 
sudo apt -y install dotnet-sdk-9.0
sudo apt-get install -y dotnet-runtime-9.0

echo
echo .Net Core version
echo
dotnet --version
