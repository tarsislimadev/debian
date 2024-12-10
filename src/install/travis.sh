#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install Travis
echo
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install snapd
sudo snap install travis

echo
echo Version of Travis
echo
travis version
