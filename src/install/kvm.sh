#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Install KVM
echo
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
sudo systemctl status libvirtd
sudo systemctl enable --now libvirtd

echo
echo Install KVM
echo
lsmod | grep -i kvm

