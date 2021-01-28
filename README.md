# Automate Noip DUC Setup and Startup Process in Ubuntu Server 20.04 LTS


## A simple script that will automate the download, installation and configuration (with user input for login and domain setup) of the Noip Dynamic Update Client for Ubuntu Linux as well as create a systemd startup process for the client on Ubuntu 20.04.


### For Ubuntu cli:

#### Install zip:

> sudo apt install zip -y

#### Download the script and extract:

> sudo wget https://github.com/Neill-H/Noip-Dynamic-Update-Client-Automation-with-Startup-Process/archive/main.zip 

> sudo unzip https://github.com/Neill-H/Noip-Dynamic-Update-Client-Automation-with-Startup-Process/archive/main.zip

#### To run the script, navigate into the unzipped file:

> cd Noip-Dynamic-Update-Client-Automation-with-Startup-Process/main

#### and type:

> sudo bash noip-duc.sh
