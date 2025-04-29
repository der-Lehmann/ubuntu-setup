echo "Cleanup"

sudo apt remove -y nautilus

# Remove Apache and related packages
sudo apt remove -y apache2 apache2-bin apache2-data apache2-utils
sudo apt remove -y libapache2-mod-*
sudo apt autoremove -y
sudo apt purge -y apache2*
sudo rm -rf /etc/apache2
sudo rm -rf /var/lib/apache2