#!/bin/bash

echo
echo Testing sudo
sudo echo OK
echo

echo
echo Installing AWS CLI
echo
sudo apt -y update
sudo apt install -y awscli

echo
echo Version of AWS CLI
echo
aws --version

echo
echo Setting up
echo
echo 'export AWS_ACCESS_KEY_ID=' >> ~/.bashrc
echo 'export AWS_SECRET_ACCESS_KEY=' >> ~/.bashrc
