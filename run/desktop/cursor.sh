echo "Cursor installieren"

mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons

cp ./run/desktop/icons/cursor-icon.png ~/.local/share/icons/cursor-icon.png

sudo wget -O /usr/local/bin/cursor.AppImage "https://downloader.cursor.sh/linux/appImage/x64"
sudo chmod +x /usr/local/bin/cursor.AppImage 

cat <<EOF >~/.local/share/applications/Cursor.desktop
[Desktop Entry]
Version=1.0
Name=Cursor
Comment=Cursor AI Code Editor
Exec=/usr/local/bin/cursor.AppImage --no-sandbox
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/icons/cursor-icon.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
