#!/bin/bash

echo 'Do you want to install Node.js LTS? (y/N)'
read -r -n 1 INSTALL_NODE
echo

if [[ "$INSTALL_NODE" = "y" ]]; then
  echo Testing sudo
  sudo echo OK

  echo 
  echo Installing Node.js LTS
  echo 
  sudo apt-get update
  curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
  sudo apt-get install -y nodejs

  echo 
  echo Installing development tools
  echo 
  sudo apt-get install -y gcc g++ make

  echo 
  echo Installing Yarn package manager
  echo 
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update
  sudo apt-get install -y yarn
  sudo apt-get update

  echo node --version
  node --version
  echo npm --version
  npm --version
  echo yarn --version
  yarn --version
fi
