sudo apt-get install -y wget git
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)
cd /var/www            # Magento is installed here
modman init            # This is only done once in the application root
modman clone git@example.com:foo/mymodule.git
