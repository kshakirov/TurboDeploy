cd ~
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)
cd TurboInternational            # Magento is installed here
modman init            # This is only done once in the application root
modman clone git@example.com:foo/mymodule.git
