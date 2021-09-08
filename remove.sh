#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing Useless Apps
echo
sudo apt remove --purge -y *samba*
sudo apt remove --purge -y *vpn*
sudo apt remove --purge -y printer-driver-brlaser
sudo apt remove --purge -y printer-driver-gutenprint
sudo apt remove --purge -y printer-driver-pnm2ppa
sudo apt remove --purge -y printer-driver-sag-gdi
sudo apt remove --purge -y printer-driver-c2esp
sudo apt remove --purge -y printer-driver-hpcups
sudo apt remove --purge -y printer-driver-postscript-hp
sudo apt remove --purge -y printer-driver-splix
sudo apt remove --purge -y printer-driver-foo2zjs
sudo apt remove --purge -y printer-driver-m2300w
sudo apt remove --purge -y printer-driver-ptouch
sudo apt remove --purge -y printer-driver-foo2zjs-common
sudo apt remove --purge -y printer-driver-min12xxw
sudo apt remove --purge -y printer-driver-pxljr
sudo apt remove --purge -y konqueror
sudo apt remove --purge -y kate
sudo apt remove --purge -y plasma-discover-common
sudo apt remove --purge -y drawing
sudo apt remove --purge -y gwenview
sudo apt remove --purge -y okular-extra-backends
sudo apt remove --purge -y okular
sudo apt remove --purge -y pix-data
sudo apt remove --purge -y celluloid
sudo apt remove --purge -y dragonplayer
sudo apt remove --purge -y juk
sudo apt remove --purge -y rhythmbox-data
sudo apt remove --purge -y kmailtransport-akonadi
sudo apt remove --purge -y kaddressbook
sudo apt remove --purge -y ark
sudo apt remove --purge -y catfish
sudo apt remove --purge -y gucharmap
sudo apt remove --purge -y baobab
sudo apt remove --purge -y xviewer-dbg
sudo apt remove --purge -y xviewer
sudo apt remove --purge -y xreader-common
sudo apt remove --purge -y gnote
sudo apt remove --purge -y kfind
sudo apt remove --purge -y onboard-common
sudo apt remove --purge -y redshift
sudo apt remove --purge -y redshift-gtk
sudo apt remove --purge -y warpinator
sudo apt remove --purge -y sweeper
sudo apt remove --purge -y muon
sudo apt remove --purge -y akregator
sudo apt remove --purge -y firefox
sudo apt remove --purge -y firefox-locale-en
sudo apt remove --purge -y hexchat-common
sudo apt remove --purge -y transmission-common
sudo apt remove --purge -y thunderbird
sudo apt remove --purge -y thunderbird-gnome-support
sudo apt remove --purge -y python3-soupsieve
sudo apt remove --purge -y kio-sieve
sudo apt remove --purge -y kio-ldap
sudo apt remove --purge -y openvpn
sudo apt remove --purge -y openssh-client
sudo apt remove --purge -y samba-common-bin
sudo apt remove --purge -y pim-sieve-editor
sudo apt remove --purge -y simple-scan
sudo apt remove --purge -y kopete-data
sudo apt remove --purge -y libreoffice-common
sudo apt remove --purge -y timeshift
sudo apt remove --purge -y plasma-browser-integration
sudo apt remove --purge -y qt5-gtk2-platformtheme
sudo apt remove --purge -y qt5-image-formats-plugins
sudo apt remove --purge -y qt5-style-plugin-motif
sudo apt remove --purge -y qt5-style-plugins
sudo apt remove --purge -y qt5-gtk-platformtheme
sudo apt remove --purge -y qt5-style-plugin-cleanlooks
sudo apt remove --purge -y qt5-style-plugin-plastique
sudo apt remove --purge -y thunar-data
sudo apt remove --purge -y pim-data-exporter
sudo apt remove --purge -y ktnef
sudo apt remove --purge -y synaptic
sudo apt remove --purge -y mintupdate
sudo apt remove --purge -y gnome-accessibility-themes
sudo apt remove --purge -y gnome-font-viewer
sudo apt remove --purge -y gnome-menus
sudo apt remove --purge -y gnome-system-tools
sudo apt remove --purge -y gnome-bluetooth
sudo apt remove --purge -y gnome-icon-theme
sudo apt remove --purge -y gnome-orca
sudo apt remove --purge -y gnome-themes-extra
sudo apt remove --purge -y gnome-calculator
sudo apt remove --purge -y gnome-keyring
sudo apt remove --purge -y gnome-session-canberra
sudo apt remove --purge -y gnome-themes-extra-data
sudo apt remove --purge -y gnome-desktop3-data
sudo apt remove --purge -y gnome-keyring-pkcs11
sudo apt remove --purge -y gnome-settings-daemon
sudo apt remove --purge -y gnome-themes-standard
sudo apt remove --purge -y gnome-disk-utility
sudo apt remove --purge -y gnome-logs
sudo apt remove --purge -y gnome-settings-daemon-common
sudo apt remove --purge -y bluedevil
sudo apt remove --purge -y bluez
sudo apt remove --purge -y bluez-cups
sudo apt remove --purge -y bluez-obexd
sudo apt remove --purge -y gwenview
sudo apt remove --purge -y ark
sudo apt remove --purge -y okular-backends
sudo apt remove --purge -y kdeconnect
sudo apt remove --purge -y vlc
sudo apt remove --purge -y snapd
sudo apt remove --purge -y cups-common
sudo apt remove --purge -y avahi-daemon

# stoping Journald
sudo systemctl stop systemd-journald-audit.socket
sudo systemctl disable systemd-journald-audit.socket
sudo systemctl stop systemd-journald-dev-log.socket
sudo systemctl disable systemd-journald-dev-log.socket
sudo systemctl stop systemd-journald.service
sudo systemctl disable systemd-journald.service

# Able to watch for file changes in this large workspace
sudo bash -c 'echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf'
sudo sysctl -p

# Removing useless network apps
sudo mv /usr/bin/networkd-dispatcher /usr/bin/-123networkd-dispatcher
