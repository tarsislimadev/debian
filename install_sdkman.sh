#!/bin/bash

echo 
echo Installing SDK Man
echo 
sudo apt update
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
echo
echo SDK Man version
echo
sdk version
