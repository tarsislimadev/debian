#!/bin/bash

echo Testing sudo
sudo echo OK

FILENAME="flutter_linux_3.27.0-stable.tar.xz"
PATHNAME="~/.flutter"

echo
echo Installing Flutter
echo
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev
curl -O "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/${FILENAME}"
tar -xf "${FILENAME}" -C "${PATHNAME}"
echo "add ${PATHNAME} in PATH"
