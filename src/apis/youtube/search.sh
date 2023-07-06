#!/usr/bin/sh

Q="${1}"

. ACCESS_TOKEN

. API_KEY

curl -sSL \
  "https://youtube.googleapis.com/youtube/v3/search?q=asd&key=${API_KEY}" \
  --header "Authorization: Bearer ${ACCESS_TOKEN}" \
  --header "Accept: application/json" \
  --compressed # | jq '.items[].id.videoId'
