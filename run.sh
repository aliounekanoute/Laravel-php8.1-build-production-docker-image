#!/bin/sh

cd /var/www
php artisan key:generate

# php artisan migrate:fresh --seed
php artisan cache:clear
php artisan route:cache
php artisan migrate

/usr/bin/supervisord -c /etc/supervisord.conf
