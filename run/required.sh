sudo apt update
sudo apt upgrade -y

sudo apt install -y build-essential curl wget software-properties-common
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev
sudo apt install -y libjpeg-dev libpng-dev libtiff-dev ffmpeg
sudo apt install -y libqt5gui5 libqt5webkit5 libqt5widgets5 xdg-utils
sudo apt install -y policykit-1-gnome
sudo apt install -y git zsh

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo