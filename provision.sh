# Install required packages

sudo apt-get update
sudo apt-get install nginx -y
sudo apt-get install mysql-server -y
sudo apt-get install php-fpm php-mysql php-mbstring -y
#sudo apt-get install php-mbstring 
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn
sudo curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo rm composer-setup.php

# Copy Nginx config

sudo cp default.nginx /etc/nginx/sites-available/default
sudo systemctl reload nginx

# Set up a sample project

sudo rm -R /var/www/html
cd /var/www
git clone https://github.com/kristjanjansen/elektrum_yii
cd elektrum_yii
cp .env.example .env
composer install
npm install
npm run build
chmod 777 prelive_protected/runtime
mysqladmin -uroot -p create yii
cd prelive_protected
./yiic migrate