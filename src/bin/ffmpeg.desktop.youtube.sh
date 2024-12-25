. ~/.datetime

. ~/.youtube_key

ffmpeg -y \
 -f x11grab -i "${DISPLAY}" \
 -q:v 1 \
 -f flv "rtmp://x.rtmp.youtube.com/live2/${youtube_key}" \
 -f flv "desktop.${datetime}.flv"
