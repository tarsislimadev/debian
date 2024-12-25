. ~/.datetime

ffmpeg -y \
 -f x11grab -i "${DISPLAY}" -q:v 1 \
 -f flv "desktop.${datetime}.flv"
