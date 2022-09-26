#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing AWS CLI
echo
sudo apt install -y awscli

echo
echo Version of AWS CLI
echo
aws --version
