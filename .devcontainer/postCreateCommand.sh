#!/bin/bash
echo ".env" >> .gitignore
composer install
php artisan key:generate
touch database/database.sqlite
php artisan migrate
sudo apt-get update
sudo apt-get install sqlite3
php artisan serve --port=8000
