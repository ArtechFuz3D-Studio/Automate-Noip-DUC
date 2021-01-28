#!/bin/bash
## This script will download the Noip Dynamic Update Client and Install it.
## The installation will include regular user setup for Noip login details and hostname configuration.
## After installing, the script will create a systemd startup process for the Noip DUC

# First copy the noip2.service file to the correct location
sudo cp noip2.service /etc/systemd/system/

# Install dependencies for make (gcc compiler)
sudo apt-get install make gcc -y
# Alternately use make package: sudo apt-get install build-essential

# Change Directory
cd /usr/local/src/

# Download Noip-DUC
sudo wget http://www.noip.com/client/linux/noip-duc-linux.tar.gz

# Extract
sudo tar xf noip-duc-linux.tar.gz

# Change Directory
cd noip-2.1.9-1/

# Install
sudo make install

##################### User Input Section #############################

# Reload the systemd daemon
sudo systemctl daemon-reload

# Start the noip2 service
sudo systemctl start noip2

# Enable the Noip service at startup
sudo systemctl enable noip2

# Display status of noip2 service
sudo systemctl status noip2

# Clean up unused packages
sudo apt remove make gcc -y
sudo apt autoremove
