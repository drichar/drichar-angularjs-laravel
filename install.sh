#!/bin/bash

curl -L https://github.com/laravel/laravel/archive/v5.4.23.tar.gz | tar xz
mv laravel-5.4.23 api
mv docker/app.dockerfile api/app.dockerfile
mv docker/ui.dockerfile ui/ui.dockerfile
mv docker/docker-compose.yml docker-compose.yml

cd api
docker run --rm -v $(pwd):/app composer/composer install

cd ..
rm -rf .git/
git init
docker-compose up
