#!/usr/bin/env bash
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
 source ~/.bash_profile
rvm install ruby
sudo apt-get install lxc
apt-get install lxc lxc-dev build-essential ruby-dev
gem install chef-lxc
curl -L https://www.opscode.com/chef/install.sh | sudo  bash

#################### chef repo #################################
wget http://github.com/opscode/chef-repo/tarball/master
mv chef-* chef-repo
rm master
mkdir ~/.chef


########################## creating containers #####################

sudo lxc-create -n redis -t ubuntu
