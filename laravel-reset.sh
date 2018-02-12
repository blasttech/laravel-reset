#!/bin/bash

# Stop on error
set -e

# Clear bootstrap cache, vendor and node_modules folders
rm -rf bootstrap/cache/*
rm -rf vendor/*/
rm -rf node_modules/*/

# Install composer packages
composer install --optimize-autoloader

# Clear laravel route and view caches
php artisan route:clear
php artisan view:clear

# Install nodejs packages and run npm
npm install
npm run dev
