#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y git nginx screen mc
sudo cp config/default  /etc/nginx/sites-available/
sudo service nginx reload
