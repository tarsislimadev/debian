#!/usr/bin/sh

datetime=$( date +%Y%m%d%H%M%S )

ffmpeg -f x11grab -i "${DISPLAY}" -f alsa -i "" -q:v 1 -f flv "desktop+mic.${datetime}.flv"
