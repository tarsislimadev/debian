sudo apt install -y net-tools
sudo netstat --tcp --udp --listening --all --numeric --program --verbose

sudo systemctl stop kdeconnect
sudo systemctl disable kdeconnect

sudo killall exim4 kdeconnectd

sudo apt -y remove --purge cups* kdeconnect* exim4* bluetooth* xwayland kwin-wayland plasma-workspace-wayland xwayland

sudo apt -y autoremove --purge
