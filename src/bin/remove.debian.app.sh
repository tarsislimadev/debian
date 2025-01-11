sudo systemctl stop kdeconnect
sudo systemctl disable kdeconnect

sudo killall exim4 kdeconnectd

sudo apt -y remove --purge cups* kdeconnect* exim4* bluetooth* xwayland* kwin-wayland* plasma-workspace-wayland* xwayland* dragonplayer* okular* libreoffice* gimp* imagemagick* gwenview*
sudo apt remove --purge -y firefox* konqueror* libreoffice*

sudo apt -y autoremove --purge
