sudo apt update -y 
# installing Brave
sudo apt install -y apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install -y brave-browser
# installing Node.js (current)
curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn
sudo apt install -y nodejs
# installing VSCode
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
mv download\?build\=stable\&os\=linux-deb-x64 code.deb
sudo apt install -y ./code.deb
sudo apt install gnome-keyring -y
# installing Git
sudo apt install -y git
# install Java 8
sudo apt install openjdk-8-jre-headless -y 
# stoping Journald
sudo systemctl stop systemd-journald-audit.socket
sudo systemctl stop systemd-journald-audit.socket
sudo systemctl stop systemd-journald-dev-log.socket 
sudo systemctl stop systemd-journald.service 
# Able to watch for file changes in this large workspace
sudo bash -c 'echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf'
sudo sysctl -p
# remove
sudo apt remove --purge -y bluedevil bluez bluez-cups bluez-obexd
sudo apt remove --purge -y gwenview ark okular-backends kdeconnect plasma-discover-common vlc
sudo apt remove --purge -y firefox snapd 
