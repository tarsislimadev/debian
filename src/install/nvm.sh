#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing NVM
echo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22

echo
echo NVM version
echo
node -v 
