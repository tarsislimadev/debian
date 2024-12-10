#

sudo add-apt-repository ppa:ubuntu-wine/ppa

sudo apt-get -y update

sudo apt-get -y install wine

#

sudo dpkg --add-architecture i386

sudo apt-get -y update

sudo apt-get install -y wine32:i386
