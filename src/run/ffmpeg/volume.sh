ffmpeg -y -i "${1}" -filter:a "volume=5" -q:v 1 "${2}"
