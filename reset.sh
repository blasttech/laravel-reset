rm -rf bootstrap/cache/*
rm -rf vendor
rm -rf node_modules
composer install --optimize-autoloader
php artisan route:clear
php artisan view:clear
npm install
npm run dev
