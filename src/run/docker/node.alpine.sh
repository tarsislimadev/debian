#!/usr/bin/sh

docker run --rm -it --net host -v $( pwd ):/app -w /app node:alpine sh
