ffmpeg -i "${1}" -filter:a "volume=40dB" -q:v 1 "_${1}"
