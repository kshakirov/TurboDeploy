#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y lxc lxc-dev build-essential ruby-dev git
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
 source ~/.bash_profile
rvm install ruby

sudo lxc-create -n redis -t ubuntu
sudo lxc-create -n elastic -t ubuntu
sudo lxc-create -n mysql -t ubuntu
sudo lxc-create -n magento -t ubuntu

sudo apt-get install -y  nginx
