#!/bin/bash

echo Testing sudo
sudo echo OK
echo
echo Installing Zsh
echo
sudo apt install -y zsh
chsh -s $(which zsh)
echo
echo Installing Oh My Zsh (from GitHub)
echo
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo
