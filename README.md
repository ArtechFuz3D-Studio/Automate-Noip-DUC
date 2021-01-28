A simple script that will automate the download, installation and configuration of the Noip Dynamic Update Client as well as create a systemd startup process for the client.




For Ubuntu cli:

Install zip if you havn't:
sudo apt install zip -y

Download the script and extract:
sudo wget https://github.com/Neill-H/noip-dynamic-update-client-and-systemd-startup-script/archive/main.zip 

sudo unzip https://github.com/Neill-H/noip-dynamic-update-client-and-systemd-startup-script/archive/main.zip

To run the script, navigate into the unzipped file:
cd noip-dynamic-update-client-and-systemd-startup-script/main

and type:
sudo bash noip-duc.sh
