. ~/.datetime

. ~/.youtube_key

ffmpeg -y \
 -f x11grab -i "${DISPLAY}" \
 -f alsa -ac 2 -i "" \
 -filter:a "volume=30dB" \
 -q:v 1 \
 -f flv "rtmp://x.rtmp.youtube.com/live2/${youtube_key}" \
 -f flv "desktop+mic.${datetime}.flv"
