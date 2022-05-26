#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing VSCode
echo

sudo apt -y update
$VSCODE_PATH=$HOME/code.deb

curl 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' \
    -H 'Connection: keep-alive' \
    -H 'Upgrade-Insecure-Requests: 1' \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36' \
    -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' \
    --compressed \
    --output $VSCODE_FILE

sudo apt install -y $VSCODE_FILE
rm -rf $VSCODE_FILE

echo
echo VSCode version
echo
code --version
