docker run --rm -it --network host -v $( pwd ):/app -w /app tmvdl/yt-dl:dlp-alpine yt-dlp -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "${1}" 
