ffmpeg -i "${1}" -filter:a "volume=30dB" -q:v 1 "_${1}"
