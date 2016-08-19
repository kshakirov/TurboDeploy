#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y git nginx screen mc
sudo bash -c 'cat > /etc/hosts <<APACHE
magento  10.0.3.184
elastic  10.0.3.184
mysql    10.0.3.184
APACHE'
sudo cp config/default  /etc/nginx/sites-available/
sudo service nginx reload
