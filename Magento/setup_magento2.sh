sudo rm -r /var/www
sudo ln -s ~/TurboInternational /var/www
sudo   chown -R www-data /var/www
cd  /var/wwww
chown -R www-data .
find . -type f -exec chmod 400 {} \;
find . -type d -exec chmod 500 {} \;
find var/ -type f -exec chmod 600 {} \;
find media/ -type f -exec chmod 600 {} \;
find var/ -type d -exec chmod 700 {} \;
find media/ -type d -exec chmod 700 {} \;
chmod 700 includes
chmod 600 includes/config.php