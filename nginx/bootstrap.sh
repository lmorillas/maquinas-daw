#!/usr/bin/env bash
apt-get update
apt-get install -y nginx
if [ ! -d /vagrant/html ]; then
  mkdir /vagrant/html
fi

if ! [ -L /var/www/html ]; then
    rm -rf /var/www/html
    ln -fs /vagrant/html /var/www/html
fi