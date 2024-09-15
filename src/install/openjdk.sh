#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install OpenJDK
echo
sudo apt -y update
sudo apt -y install openjdk-8-jre-headless
echo
