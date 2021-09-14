#!/bin/bash

if [[ -z $NAME ]]; then
  echo 'type $NAME'
  read NAME
fi

if [[ -z $EMAIL ]]; then
  echo 'type $EMAIL'
  read EMAIL
fi

echo Testing sudo
sudo echo OK

echo 
echo Installing Git
echo 
sudo apt update -y
sudo apt install -y git

echo 
echo Setting up Docker
echo 
git config --global user.name "${NAME}"
git config --global user.email "${EMAIL}"

echo
echo Git version
echo
git --version
