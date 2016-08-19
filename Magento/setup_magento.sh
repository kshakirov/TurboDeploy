sudo apt-get update
sudo apt-get install -y apache2  php5 php5-mysql php5-curl
sudo apt-get install -y wget git lynx
sudo a2enmod rewrite
sudo apt-get install -y php5-mcrypt
php5enmod mcrypt
sudo apt-get install -y php-pear libyaml-dev
sudo apt-get install  -y php5-dev screen mc
pecl install yaml
pecl install redis
echo "extension=redis.so" > /etc/php5/mods-available/redis.ini
php5enmod redis

sudo bash -c 'cat > /etc/apache2/sites-enabled/000-default.conf <<APACHE
<VirtualHost *:80>
  ServerAdmin webmaster@localhost
  DocumentRoot /var/www
  <Directory />
    Options FollowSymLinks
    AllowOverride None
  </Directory>
  <Directory /var/www/>
    Options Indexes FollowSymLinks MultiViews
    AllowOverride All
    Order allow,deny
    allow from all
  </Directory>
  ErrorLog \${APACHE_LOG_DIR}/error.log
  CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
APACHE'

service apache2 restart

cp keys/* ~/.ssh/
cd ~
git config --global user.name kshakirov
git config --global user.email kirill.shakirov4@gmail.com
git config --global github.user kshakirov
git config --global github.token 9a5caa991fe9b691efbf840531593d4587567dbb
git clone git@github.com:pthiry/TurboInternational.git
cd TurboInternational && git checkout Magento-633-1-angular-4-proxy-home-redis


sudo rm -r /var/www
sudo ln -s /home/ubuntu/TurboInternational/magento /var/www
sudo   chown -R www-data /var/www
cd  /var/www &&  sudo chown -R www-data .

service apache2 reload