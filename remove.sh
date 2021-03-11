#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Removing Samba and VPN
echo
sudo apt-get remove --purge -y *samba* *vpn* 

echo
echo Removing Simple Scan
echo
[[ -e $(which simple-scan) ]] && sudo apt remove --purge -y simple-scan 

echo
echo Removing Printer Drivers
echo
sudo apt remove --purge  printer-driver-brlaser printer-driver-gutenprint printer-driver-pnm2ppa printer-driver-sag-gdi printer-driver-c2esp printer-driver-hpcups printer-driver-postscript-hp printer-driver-splix printer-driver-foo2zjs printer-driver-m2300w printer-driver-ptouch printer-driver-foo2zjs-common printer-driver-min12xxw printer-driver-pxljr 

echo
echo Removing Useless Apps
echo
sudo apt remove --purge -y konqueror kate plasma-discover-common drawing gwenview okular-extra-backends okular pix-data celluloid dragonplayer juk rhythmbox-data kmailtransport-akonadi kaddressbook ark  catfish gucharmap baobab xviewer-dbg xviewer xreader-common gnote kfind onboard-common redshift redshift-gtk warpinator sweeper muon akregator firefox firefox-locale-en hexchat-common transmission-common thunderbird thunderbird-gnome-support python3-soupsieve kio-sieve kio-ldap openvpn openssh-client samba-common-bin pim-sieve-editor simple-scan kopete-data libreoffice-common timeshift plasma-browser-integration qt5-gtk2-platformtheme qt5-image-formats-plugins qt5-style-plugin-motif qt5-style-plugins qt5-gtk-platformtheme qt5-style-plugin-cleanlooks qt5-style-plugin-plastique thunar-data pim-data-exporter ktnef synaptic mintupdate gnome-accessibility-themes gnome-font-viewer gnome-menus gnome-system-tools gnome-bluetooth gnome-icon-theme gnome-orca gnome-themes-extra gnome-calculator gnome-keyring gnome-session-canberra gnome-themes-extra-data gnome-desktop3-data gnome-keyring-pkcs11 gnome-settings-daemon gnome-themes-standard gnome-disk-utility gnome-logs gnome-settings-daemon-common bluedevil bluez bluez-cups bluez-obexd gwenview ark okular-backends kdeconnect plasma-discover-common vlc firefox snapd

echo
echo Removing no longer required packages
echo
sudo apt-get -y autoremove
