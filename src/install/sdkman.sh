#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing SDK Man
echo
sudo apt -y update
curl -s 'https://get.sdkman.io' | sh
sdk selfupdate force
