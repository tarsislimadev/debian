D=$( curl -sSL "http://worldtimeapi.org/api/timezone/America/Sao_Paulo" | jq -r '.datetime' | sed -e 's/T/ /' | sed -e 's/\.............//ig' | sed -e 's/\"//ig' )

echo sudo timedatectl set-time "${D}"

sudo timedatectl set-time "${D}"
