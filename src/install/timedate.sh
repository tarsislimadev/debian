D=$( curl -sSL "http://worldtimeapi.org/api/timezone/America/Sao_Paulo" | jq '.datetime' | sed -e 's/T/ /' | sed -e 's/\.............//' )

echo sudo timedatectl set-time "${D}"

sudo timedatectl set-time "${D}"
