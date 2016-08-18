sudo find . -type f -exec chmod 400 {} \;
sudo find . -type d -exec chmod 500 {} \;
sudo find var/ -type f -exec chmod 600 {} \;
sudo find media/ -type f -exec chmod 600 {} \;
sudo find var/ -type d -exec chmod 700 {} \;
sudo find media/ -type d -exec chmod 700 {} \;
sudo chmod 700 includes
sudo chmod 600 includes/config.php