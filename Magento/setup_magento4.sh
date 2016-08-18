git config --global user.name kshakirov
git config --global user.email kirill.shakirov4@gmail.com
git config --global github.user kshakirov
git config --global github.token 9a5caa991fe9b691efbf840531593d4587567dbb

sudo usermod -G www-data ubuntu && sudo   chown -R ubuntu www

git clone git@github.com:pthiry/TurboInternational.git

sudo apt-get install -y wget git
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)


