gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 900
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 300

# Set default terminal
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
sudo update-alternatives --set x-terminal-emulator $(which alacritty)