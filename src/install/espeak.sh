#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing eSpeak
echo
sudo apt -y update
sudo apt -y install espeak espeak-ng
echo
