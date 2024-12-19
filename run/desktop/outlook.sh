echo "Microsoft Outlook installieren"

mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons

cp ./run/desktop/icons/outlook-icon.png ~/.local/share/icons/outlook-icon.png

cat <<EOF >~/.local/share/applications/Outlook.desktop
[Desktop Entry]
Version=1.0
Name=Outlook
Comment=Microsoft Outlook
Exec=google-chrome --app="https://outlook.office.com" --name=Outlook --class=Outlook
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/icons/outlook-icon.png
Categories=Network;Email;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF