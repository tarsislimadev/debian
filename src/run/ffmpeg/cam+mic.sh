#!/usr/bin/sh

datetime=$( date +%Y%m%d%H%M%S )

ffmpeg -f v4l2 -i /dev/video0 -f alsa -ac 2 -i hw:0 -f flv "cam+mic.${datetime}.sh"
