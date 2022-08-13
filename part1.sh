#update system
sudo apt update 
sudo apt upgrade -y
# Setup Time Zone
sudo timedatectl set-timezone Asia/Colombo
# Install Firewalld
sudo apt-get install firewalld -y
# Open All Ports
firewall-cmd --zone=trusted --add-source=0.0.0.0/0
# Save Config
sudo firewall-cmd --runtime-to-permanent
# Reload Firewalld
sudo firewall-cmd --reload
# Adding Cron Jobs
(crontab -l && echo "#oci") | crontab -
(crontab -l && echo "@reboot systemctl start firewalld") | crontab -
#Get Git
git clone https://github.com/hitrov/oci-arm-host-capacity.git
mv oci-arm-host-capacity getocivps
which php
sudo apt update
sudo apt install php libapache2-mod-php
php -v
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
sudo apt-get install zlibc -y
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
sudo apt install php7.4-curl
sudo apt install php7.4-dom
sudo apt install php7.4-mbstring -y
sudo apt install php7.4-zip php7.4-unzip
sudo apt install unzip -y
cd getocivps
composer install
#Add Log File 
touch log.txt
chmod 777 log.txt
#copy .env
cp .env.example .env
#edit .env
nano .env
#End part 1
