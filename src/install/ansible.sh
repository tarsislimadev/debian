#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing AWS CLI
echo
sudo apt -y update
sudo apt -y install software-properties-common
sudo add-apt-repository -y --yes --update ppa:ansible/ansible
sudo apt -y install ansible

