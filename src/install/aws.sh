#!/bin/bash

echo
echo Testing sudo
sudo echo OK
echo

echo
echo Installing AWS CLI
echo
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip ./aws/

echo
echo Version of AWS CLI
echo
aws --version

echo
echo Setting up
echo
echo 'export AWS_ACCESS_KEY_ID=' >> ~/.bashrc
echo 'export AWS_SECRET_ACCESS_KEY=' >> ~/.bashrc
