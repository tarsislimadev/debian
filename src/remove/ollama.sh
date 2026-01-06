/usr/local/bin/ollama uninstall

sudo systemctl stop ollama

sudo rm /etc/systemd/system/ollama.service

sudo rm /usr/local/bin/ollama

sudo rm -r /usr/share/ollama

rm -rf ~/.ollama

sudo systemctl daemon-reload
