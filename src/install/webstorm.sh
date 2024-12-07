#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing VSCode
echo

FILENAME="WebStorm-2024.3.1.tar.gz"
curl -O "https://download-cdn.jetbrains.com/webstorm/${FILENAME}"
tar -xf "${FILENAME}"
sudo mv WebStorm-243.22562.112/ /usr/bin/WebStorm/
