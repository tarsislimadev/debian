#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing NVM
echo
curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 20

echo
echo NVM version
echo
node --version
