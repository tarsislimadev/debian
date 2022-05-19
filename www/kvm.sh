
# sudo apt install -y qemu-kvm

# sudo apt install -y cpu-checker

# sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager

sudo systemctl status libvirtd

sudo systemctl enable --now libvirtd

lsmod | grep -i kvm


