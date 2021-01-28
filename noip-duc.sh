#!/bin/bash


sudo cp noip2.service /etc/systemd/system/

sudo apt-get install zip -y

sudo apt-get install make gcc -y

cd /usr/local/src/

sudo wget http://www.noip.com/client/linux/noip-duc-linux.tar.gz

sudo tar xf noip-duc-linux.tar.gz

cd noip-2.1.9-1/

sudo make install

####

sudo systemctl daemon-reload

sudo systemctl start noip2

sudo systemctl enable noip2

sudo systemctl status noip2