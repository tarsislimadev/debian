#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing AWS CLI
echo
sudo apt -y install awscli ec2-instance-connect

echo
echo Version of AWS CLI
echo
aws --version

echo
echo Setting up
echo
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
