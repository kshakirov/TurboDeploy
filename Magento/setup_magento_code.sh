cp keys/* ~/.ssh/
cd ~
git config --global user.name kshakirov
git config --global user.email kirill.shakirov4@gmail.com
git config --global github.user kshakirov
git config --global github.token 9a5caa991fe9b691efbf840531593d4587567dbb
git clone git@github.com:pthiry/TurboInternational.git
cd TurboInternational && git checkout Magento-633-1-angular-4-proxy-home-redis


sudo rm -r /var/www
sudo ln -s /home/ubuntu/TurboInternational/magento /var/www
sudo   chown -R www-data /var/www
cd  /var/www &&  sudo chown -R www-data .

service apache2 reload

cd ~
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)
cd TurboInternational/magento            # Magento is installed here
~/bin/./modman init            # This is only done once in the application root
~/bin./modman clone https://github.com/colinmollenhour/Cm_RedisSession
~/bin./modman clone https://github.com/colinmollenhour/Cm_Cache_Backend_Redis