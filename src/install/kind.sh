#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install kind
echo
curl -sSL -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/bin/kind
