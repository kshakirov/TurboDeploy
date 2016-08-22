sudo apt-get update
sudo apt-get install -y build-essential ruby-dev git mc lynx screen
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
 source ~/.bash_profile
rvm install jruby
gem install bundle