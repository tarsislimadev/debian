#!/bin/bash

alias s="sudo echo OK"

alias own="sudo chown ${USER}:${USER} . -R"

DOMAINS="static.addtoany.com ws.hvr360.net"

echo "127.0.0.0 static.addtoany.com" >> /etc/hosts

echo "127.0.0.0 ws.hvr360.net" > /etc/hosts
