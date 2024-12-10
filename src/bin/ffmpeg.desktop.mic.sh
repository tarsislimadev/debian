. ~/.datetime

ffmpeg -y \
 -f x11grab -i "${DISPLAY}" \
 -f alsa -i "" \
 -q:v 1 \
 -f flv "desktop+mic.${datetime}.flv"
