#!/bin/bash
cd /usr/share/nginx/html
npm install
bower install --allow-root
gulp
