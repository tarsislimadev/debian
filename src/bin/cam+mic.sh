datetime=$( date +%Y%m%d%H%M%S )

ffmpeg -f v4l2 -i "/dev/video0" -f alsa -i "" -f flv "cam+mic.${datetime}.flv"
