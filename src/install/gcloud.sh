#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install Google Cloud CLI
echo
FILENAME="google-cloud-cli-linux-x86_64.tar.gz"
curl -s -O "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/${FILENAME}"
tar -xf "${FILENAME}"
rm -rf  "${FILENAME}"
SDKDIR="google-cloud-sdk/"
mv "${SDKDIR}" "~/.${SDKDIR}"
echo "export PATH=\"~/.${SDKDIR}bin/:${PATH}\" " >> .bashrc
