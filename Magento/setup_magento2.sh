

sudo usermod -G www-data ubuntu && sudo   chown -R ubuntu www
#sudo usermod -G www-data ubuntu
chown -R ubuntu .
cd /var/www
echo pwd
find . -type f -exec chmod 400 {} \;
find . -type d -exec chmod 500 {} \;
find var/ -type f -exec chmod 600 {} \;
find media/ -type f -exec chmod 600 {} \;
find var/ -type d -exec chmod 700 {} \;
find media/ -type d -exec chmod 700 {} \;
chmod 700 includes
chmod 600 includes/config.php