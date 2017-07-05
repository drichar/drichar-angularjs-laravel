#!/bin/bash
mv api/.env.example api/.env
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan optimize
rm -rf api/routes/api.php
mv api-temp/api.php api/routes/api.php
mv api-temp/TestController.php api/app/Http/Controllers/TestController.php
rm -rf api-temp/
