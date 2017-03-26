# Provisioning 

Or Virtual Private Server Setup

## Simple provisioning

1. Spin up Digital Ocean / Linode server (min 1GB RAM)
2. SSH into it as root
3. Run

```sh
cd /var
git clone https://github.com/kristjanjansen/elektrum
cd elektrum
./provision.sh
```

(When Mysql dialogbox appears, keep pressing Enter)

A bit more secure tutorial is here: https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-in-ubuntu-16-04

## Advanced provisioning

### As a Saas

https://forge.laravel.com/ ($15/mo)

### As a shell script:

https://github.com/tripikad/trip2_vagrant/blob/master/provision.sh

### As a special provisioning language

https://blog.serverdensity.com/deploying-nginx-with-ansible/

# Deployment

## Simple deployment

See this very project :)

## Zero-downtime deployers (with symlink magick)

https://envoyer.io/ - deploy-as-a-service ($5/mo)

## Zero-downtime local scripts

Dunno how they work in Github webhook context

- https://deployer.org
- https://github.com/papertank/envoy-deploy
- https://serversforhackers.com/video/enhancing-envoy-deployment

# Testing

## Testing frameworks

Codeception seems to be the most popular option for Yii

- http://codeception.com/docs/modules/Yii1
- http://codeception.com/for/yii

## Continuous integration test runners

- https://docs.travis-ci.com/user/languages/php
- https://circleci.com/docs/language-php/

# Linting

## PHP

- https://styleci.readme.io/
- https://insight.sensiolabs.com
- https://scrutinizer-ci.com/
- https://codeclimate.com/

## CSS/JS

- https://github.com/stylelint/stylelint CSS
- http://eslint.org/ JS

