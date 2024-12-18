echo "Fonts installieren"

cd /tmp
sudo rm -rf /tmp/font
mkdir font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip
unzip /tmp/JetBrainsMono.zip -d /tmp/font
unzip /tmp/Meslo.zip -d /tmp/font
sudo cp -f /tmp/font/*.ttf /usr/local/share/fonts/
sudo fc-cache -f -v
cd -