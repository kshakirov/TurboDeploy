sudo apt-get update
sudo apt-get install -y build-essential ruby-dev git
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
 source ~/.bash_profile
rvm install jruby