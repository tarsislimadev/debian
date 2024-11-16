#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install kotlin compiler
echo

VERSION="2.0.21"

sudo apt -y update
sudo apt -y install wget zip

wget "https://github.com/JetBrains/kotlin/releases/download/v${VERSION}/kotlin-compiler-${VERSION}.zip"
unzip "kotlin-compiler-${VERSION}.zip"
rm -rf "kotlin-compiler-${VERSION}.zip"

sudo mv kotlinc /usr/share/kotlinc

echo 'PATH="${PATH}":/usr/share/kotlinc/bin' >> ~/.bashrc

echo
echo Install kotlin compiler
echo

kotlinc -version
