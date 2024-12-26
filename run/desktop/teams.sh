echo "Microsoft Teams installieren"

mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/icons

cp ./run/desktop/icons/teams-icon.png ~/.local/share/icons/teams-icon.png

cat <<EOF >~/.local/share/applications/Teams.desktop
[Desktop Entry]
Version=1.0
Name=Teams
Comment=Microsoft Teams
# The profile-directory option may need to be changed. Look for the "Profile Path" entry on this page: brave://version
Exec=brave-browser --profile-directory="Profile 2" --app="https://teams.microsoft.com" --name=Teams --class=Teams
Terminal=false
Type=Application
Icon=~/.local/share/icons/teams-icon.png
Categories=Network;InstantMessaging;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF