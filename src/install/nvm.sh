#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing NVM
echo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 22

echo
echo Node.js and NPM versions
echo
echo Node.js
node -v 
echo NPM
npm -v
