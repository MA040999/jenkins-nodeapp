#!/bin/bash

npm run build

tar czf build-nodeapp.tar.gz build public src package.json node_modules

cp build-nodeapp.tar.gz /home/szabist

rm build-nodeapp.tar.gz

/usr/local/bin/pm2 stop demo-nodeapp

rm -rf /home/szabist/demo-nodeapp

mkdir /home/szabist/demo-nodeapp

tar xf /home/szabist/build-nodeapp.tar.gz -C /home/szabist/demo-nodeapp

rm /home/szabist/build-nodeapp.tar.gz

cd /home/szabist/demo-nodeapp

/usr/local/bin/pm2 serve build 8070 --name "demo-nodeapp" --spa