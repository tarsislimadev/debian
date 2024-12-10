#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install kotlin compiler
echo

VERSION="2.0.21"

FILENAME="kotlin-compiler-${VERSION}.zip"

sudo apt -y update
sudo apt -y install wget zip

wget "https://github.com/JetBrains/kotlin/releases/download/v${VERSION}/${FILENAME}"
unzip "${FILENAME}"
rm -rf "${FILENAME}"

sudo mv kotlinc /usr/share/kotlinc

echo 'PATH="${PATH}":/usr/share/kotlinc/bin' >> ~/.bashrc

echo
echo Install kotlin compiler
echo

kotlinc -version
