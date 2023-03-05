#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing VSCode
echo

sudo apt -y update
VSCODE_PATH=$HOME/code.deb

curl -sSL 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' --compressed --output $VSCODE_PATH

sudo apt install -y $VSCODE_PATH
rm -rf $VSCODE_PATH

echo
echo VSCode version
echo
code --version
