#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing JQ
echo
sudo apt update -y
sudo apt install -y jq
