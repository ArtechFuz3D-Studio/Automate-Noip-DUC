# Automate the Noip-update-client Installation and Noip Startup Process in Ubuntu 20.04 LTS


## A simple script that will automate the download, install and configuration (with user input for login and domain setup) of the Noip Dynamic Update Client for Ubuntu Linux as well as create a systemd startup process for the client on Ubuntu 20.04.


### For Ubuntu cli:

#### Prerequisite 
##### Install Zip:

``` sudo apt install zip -y ```

----------------------------------------------------------------------------------

#### Download the script and extract:

``` sudo wget https://github.com/Neill-H/Automate-Noip-DUC/archive/main.zip  ```

``` sudo unzip main.zip ```


#### To run the script, navigate into the extracted folder:

``` cd Automate-Noip-DUC-main ```


#### Run:

``` sudo bash noip-duc.sh ```

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

### Run Noip DUC with multiple user accounts:

#### Stop the noip2 service

``` sudo systemctl stop noip2 ```

#### End any running noip2 services:
##### To view the process ID:

``` sudo /usr/local/bin/noip2 -S ```

##### Stop the process:

``` sudo /usr/local/bin/noip2 -K <PID> ```
###### Where <PID> is the process ID found in previous command.

#### Run the econfiguration client multiple times to set up multiple accounts:

``` sudo /usr/local/bin/noip2 -C ```

#### Set the multiple instance flag:

``` sudo /usr/local/bin/noip2 -M ```

#### Restart the systemd service

``` sudo systemctl start noip2 ```
``` sudo systemctl status noip2 ```
