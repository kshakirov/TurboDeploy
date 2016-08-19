sudo apt-get update
sudo apt-get install -y apache2  php5 php5-mysql php5-curl
sudo apt-get install -y wget git lynx locate
sudo a2enmod rewrite
sudo apt-get install -y php5-mcrypt
sudo php5enmod mcrypt
sudo apt-get install -y php-pear libyaml-dev
sudo apt-get install  -y php5-dev screen mc
sudo pecl install yaml
sudo pecl install redis-2.2.8
echo "extension=redis.so" > redis.ini
sudo cp redis.ini /etc/php5/mods-available/redis.ini
sudo php5enmod redis

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

