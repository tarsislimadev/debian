#!/usr/bin/sh

. ACCESS_TOKEN

. API_KEY

curl \
  "https://youtube.googleapis.com/youtube/v3/channels?key=${YOUR_API_KEY}" \
  --header "Authorization: Bearer ${YOUR_ACCESS_TOKEN}" \
  --header "Accept: application/json" \
  --compressed
