datetime="$( date +%Y%m%d%H%M%S )"

ffmpeg -f x11grab -i :0 "pomodoro.${datetime}.flv"
