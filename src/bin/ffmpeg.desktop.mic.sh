. ~/.datetime

ffmpeg -y \
 -f x11grab -i "${DISPLAY}" \
 -f alsa -i "" \
 -filter:a "volume=30dB" -q:v 1 \
 -f flv "desktop+mic.${datetime}.flv"
