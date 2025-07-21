#!/bin/bash

echo Testing sudo
sudo echo OK
echo

echo
echo Installing helm 3
echo
curl -O https://get.helm.sh/helm-v3.16.2-linux-amd64.tar.gz
tar xvf helm-v3.16.2-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm

echo
echo helm version
echo
helm version
