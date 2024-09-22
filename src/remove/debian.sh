sudo apt install -y net-tools
sudo netstat --tcp --udp --listening --all --numeric --program --verbose

sudo systemctl stop kdeconnect
sudo systemctl disable kdeconnect

sudo apt remove --purge cups
sudo apt remove --purge kdeconnect
sudo apt remove --purge exim4

sudo apt autoremove --purge

sudo killall exim4 kdeconnectd
