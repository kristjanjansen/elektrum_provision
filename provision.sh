# Install required packages

sudo apt-get update
sudo apt-get install nginx -y
sudo apt-get install mysql-server -y
sudo apt-get install php-fpm php-mysql -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn

# Copy Nginx config

sudo cp default.nginx /etc/nginx/sites-available/default
sudo systemctl reload nginx

# Set up a sample project

sudo rm -R /var/www/html
sudo mkdir -p /var/www/public
echo -e "<?php\n\nphpinfo();" > /var/www/public/index.php
