 . ~/.datetime

ffmpeg -y \
 -s 1280x720 \
 -f x11grab -i "${DISPLAY}" \
 -f v4l2 -i /dev/video0 \
 -f alsa -ac 2 -i "" \
 -filter_complex '[0]scale=1280:720[a0];[1]scale=128:72[b1];[b1]pad=1280:720:1140:640:0x00000000[a1];[a0][a1]overlay' \
 -filter:a "volume=30dB" \
 -q:v 1 \
 -f flv "cam+desktop+mic.${datetime}.flv"
