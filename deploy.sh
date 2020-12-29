#!/bin/sh     
sudo git pull origin main
cd client
sudo npm install
sudo npm run-script build
cd ..
sudo docker-compose stop
sudo docker-compose up --build
sudo systemctl restart nginx
sudo pm2 restart all