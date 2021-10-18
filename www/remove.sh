#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing Useless Apps
echo
sudo apt remove -y --purge printer-driver-foo2zjs-common
sudo apt remove -y --purge plasma-discover-common
sudo apt remove -y --purge xreader-common
sudo apt remove -y --purge onboard-common
sudo apt remove -y --purge hexchat-common
sudo apt remove -y --purge transmission-common
sudo apt remove -y --purge samba-common-bin
sudo apt remove -y --purge libreoffice-common
sudo apt remove -y --purge gnome-settings-daemon-common
sudo apt remove -y --purge cups-common
sudo apt remove -y --purge libpam-kwallet-common
sudo apt remove -y --purge *samba*
sudo apt remove -y --purge *vpn*
sudo apt remove -y --purge printer-driver-brlaser
sudo apt remove -y --purge printer-driver-gutenprint
sudo apt remove -y --purge printer-driver-pnm2ppa
sudo apt remove -y --purge printer-driver-sag-gdi
sudo apt remove -y --purge printer-driver-c2esp
sudo apt remove -y --purge printer-driver-hpcups
sudo apt remove -y --purge printer-driver-postscript-hp
sudo apt remove -y --purge printer-driver-splix
sudo apt remove -y --purge printer-driver-foo2zjs
sudo apt remove -y --purge printer-driver-m2300w
sudo apt remove -y --purge printer-driver-ptouch
sudo apt remove -y --purge printer-driver-min12xxw
sudo apt remove -y --purge printer-driver-pxljr
sudo apt remove -y --purge konqueror
sudo apt remove -y --purge kate
sudo apt remove -y --purge drawing
sudo apt remove -y --purge gwenview
sudo apt remove -y --purge okular-extra-backends
sudo apt remove -y --purge okular
sudo apt remove -y --purge pix-data
sudo apt remove -y --purge celluloid
sudo apt remove -y --purge dragonplayer
sudo apt remove -y --purge juk
sudo apt remove -y --purge rhythmbox-data
sudo apt remove -y --purge kmailtransport-akonadi
sudo apt remove -y --purge kaddressbook
sudo apt remove -y --purge ark
sudo apt remove -y --purge catfish
sudo apt remove -y --purge gucharmap
sudo apt remove -y --purge baobab
sudo apt remove -y --purge xviewer-dbg
sudo apt remove -y --purge xviewer
sudo apt remove -y --purge gnote
sudo apt remove -y --purge kfind
sudo apt remove -y --purge redshift
sudo apt remove -y --purge redshift-gtk
sudo apt remove -y --purge warpinator
sudo apt remove -y --purge sweeper
sudo apt remove -y --purge muon
sudo apt remove -y --purge akregator
sudo apt remove -y --purge firefox
sudo apt remove -y --purge firefox-locale-en
sudo apt remove -y --purge thunderbird
sudo apt remove -y --purge thunderbird-gnome-support
sudo apt remove -y --purge python3-soupsieve
sudo apt remove -y --purge kio-sieve
sudo apt remove -y --purge kio-ldap
sudo apt remove -y --purge openvpn
sudo apt remove -y --purge openssh-client
sudo apt remove -y --purge pim-sieve-editor
sudo apt remove -y --purge simple-scan
sudo apt remove -y --purge kopete-data
sudo apt remove -y --purge timeshift
sudo apt remove -y --purge plasma-browser-integration
sudo apt remove -y --purge qt5-gtk2-platformtheme
sudo apt remove -y --purge qt5-image-formats-plugins
sudo apt remove -y --purge qt5-style-plugin-motif
sudo apt remove -y --purge qt5-style-plugins
sudo apt remove -y --purge qt5-gtk-platformtheme
sudo apt remove -y --purge qt5-style-plugin-cleanlooks
sudo apt remove -y --purge qt5-style-plugin-plastique
sudo apt remove -y --purge thunar-data
sudo apt remove -y --purge pim-data-exporter
sudo apt remove -y --purge ktnef
sudo apt remove -y --purge synaptic
sudo apt remove -y --purge mintupdate
sudo apt remove -y --purge gnome-accessibility-themes
sudo apt remove -y --purge gnome-font-viewer
sudo apt remove -y --purge gnome-menus
sudo apt remove -y --purge gnome-system-tools
sudo apt remove -y --purge gnome-bluetooth
sudo apt remove -y --purge gnome-icon-theme
sudo apt remove -y --purge gnome-orca
sudo apt remove -y --purge gnome-themes-extra
sudo apt remove -y --purge gnome-calculator
sudo apt remove -y --purge gnome-keyring
sudo apt remove -y --purge gnome-session-canberra
sudo apt remove -y --purge gnome-themes-extra-data
sudo apt remove -y --purge gnome-desktop3-data
sudo apt remove -y --purge gnome-keyring-pkcs11
sudo apt remove -y --purge gnome-settings-daemon
sudo apt remove -y --purge gnome-themes-standard
sudo apt remove -y --purge gnome-disk-utility
sudo apt remove -y --purge gnome-logs
sudo apt remove -y --purge bluedevil
sudo apt remove -y --purge bluez
sudo apt remove -y --purge bluez-cups
sudo apt remove -y --purge bluez-obexd
sudo apt remove -y --purge gwenview
sudo apt remove -y --purge ark
sudo apt remove -y --purge okular-backends
sudo apt remove -y --purge kdeconnect
sudo apt remove -y --purge vlc
sudo apt remove -y --purge snapd
sudo apt remove -y --purge avahi-daemon
sudo apt remove -y --purge libpam-kwallet5
sudo apt remove -y --purge kwalletmanager
sudo apt remove -y --purge libkf5wallet-bin
sudo apt remove -y --purge libkf5wallet-bin
sudo apt remove -y --purge signon-kwallet-extension

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
sudo mv /usr/bin/networkd-dispatcher /usr/bin/---123network

# Removing others
sudo apt autoremove -y --purge
