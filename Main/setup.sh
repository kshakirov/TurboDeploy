#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install git
sudo apt-get install curl
sudo apt-get install screen
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /home/ubuntu/.rvm/scripts/rvm
rvm install jruby
gem install bundler
