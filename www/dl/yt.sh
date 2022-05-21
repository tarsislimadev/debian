
docker run --rm -d \
  -v $(pwd):/app -w /app \
  --network host tmvdl/yt-dl \
  youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $@
