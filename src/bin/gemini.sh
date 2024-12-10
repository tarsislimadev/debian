#!/usr/bin/sh

. ~/.generativelanguageapikey

text="${1}"

url="https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${generativelanguageapikey}"

curl -sSL -X POST -H "Content-Type: application/json" \
 -d "{'contents':[{'parts':[{'text':'${text}'}]}]}" \
 "${url}"
