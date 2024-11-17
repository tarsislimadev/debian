#!/usr/bin/sh

datetime=$( date +%Y%m%d%H%M%S )

ffmpeg -f x11grab -i "${DISPLAY}" -f alsa -i "" -f flv "desktop+mic.${datetime}.flv"
