#!/bin/bash
echo ‘installing requirements…’ 
npm install
echo ‘start server…’
service_name="hello-api"
if pm2 list | grep -q "$service_name"; then
  echo "PM2 service '$service_name' is running. Restarting..."
  pm2 restart "$service_name"
else
  echo "PM2 service '$service_name' is not running. Starting..."
  pm2 start npm --name "$service_name" -- start
fi
echo ‘started server. ending SSH session..’
exit
