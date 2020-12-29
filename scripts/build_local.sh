#!/bin/sh
sudo git pull origin main
cd client
sudo npm install
sudo npm run-script build
sudo npm start