echo "WhatsApp installieren"

mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons

cp ./run/desktop/icons/whatsapp-icon.png ~/.local/share/icons/whatsapp-icon.png

cat <<EOF >~/.local/share/applications/WhatsApp.desktop
[Desktop Entry]
Version=1.0
Name=WhatsApp
Comment=WhatsApp Messenger
# The profile-directory option may need to be changed. Look for the "Profile Path" entry on this page: brave://version
Exec=brave-browser --profile-directory="Profile 1" --app="https://web.whatsapp.com" --name=WhatsApp --class=Whatsapp
Terminal=false
Type=Application
Icon=~/.local/share/icons/whatsapp-icon.png
Categories=Network;InstantMessaging;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
