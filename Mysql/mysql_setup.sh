sudo apt-get update
sudo apt-get install -y  mysql-server-5.6
mysql -u root -pservantes -e "CREATE DATABASE IF NOT EXISTS magento;"
mysql -u root -pservantes -e "GRANT ALL PRIVILEGES ON magento.* TO magento@'%' IDENTIFIED BY 'magento'; FLUSH PRIVILEGES;"

