#!/bin/bash

echo Testing sudo
sudo echo OK

echo 
echo Install Spotify
echo 
sudo apt-get -y update
sudo apt-get -y install spotify-client

echo 
echo Version of Spotify
echo 

