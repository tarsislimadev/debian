#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing JQ
echo
sudo apt -y update
sudo apt -y install jq
