#!/bin/sh     
sudo git pull origin main
sudo docker-compose stop
sudo docker-compose up --build
sudo systemctl restart nginx
sudo pm2 restart all