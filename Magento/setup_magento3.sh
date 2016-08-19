cd ~
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)
cd TurboInternational/magento            # Magento is installed here
~/bin/./modman init            # This is only done once in the application root
~/bin./modman clone https://github.com/colinmollenhour/Cm_RedisSession
~/bin./modman clone https://github.com/colinmollenhour/Cm_Cache_Backend_Redis
