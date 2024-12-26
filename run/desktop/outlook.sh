echo "Microsoft Outlook installieren"

mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons

cp ./run/desktop/icons/outlook-icon.png ~/.local/share/icons/outlook-icon.png

cat <<EOF >~/.local/share/applications/Outlook.desktop
[Desktop Entry]
Version=1.0
Name=Outlook
Comment=Microsoft Outlook
# The profile-directory option may need to be changed. Look for the "Profile Path" entry on this page: brave://version
Exec=brave-browser --profile-directory="Profile 2" --app="https://outlook.office.com" --name=Outlook --class=Outlook
Terminal=false
Type=Application
Icon=~/.local/share/icons/outlook-icon.png
Categories=Network;Email;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF