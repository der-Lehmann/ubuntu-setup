echo "rofi installieren"

sudo apt install -y rofi

cd /tmp
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd /tmp/rofi
chmod +x setup.sh
./setup.sh
sudo rm -r /tmp/rofi