# OPNsense API Backup

A bash script used to access the OPNsense API remotely to backup the configuration.

## Requirements

OPNSense instance with the os-api-backup plugin installed. <br />
A Remote system for running the script and saving the output. <br />
(Iam using Debian for example, curl needs to be installed and jq to fix the formatting of the alias backup)

## Setup OPNsense

Install os-api-backup plugin on your OPNSense. <br />
Create a User which will be used to create a API Key and give the proper permissions for the Backup script. <br />
Only 2 Permissions are needed: Backup API and Firewall: Aliases. <br />
In the context of this user u need to create the API Key. <br />
The API Key is downloaded automatically to your PC and contains the API Key and the corresponding Secret.
    
## Example Config Debian
Install the dependencies for debian to run the script

    $ sudo apt install curl jq

Make the script executable

    $ sudo chmod u+x /*pathtobackupscript*/opnsense-backup.sh

Execute the script through crontab, in the example at 1 in the morning

    $ sudo crontab -e

    0 1 * * * /*pathtobackupscript*/opnsense-backup.sh

## Sources
https://docs.opnsense.org/development/how-tos/api.html

https://docs.opnsense.org/development/api/plugins/backup.html

https://docs.opnsense.org/development/api/core/firewall.html

https://github.com/curl/curl

https://github.com/stedolan/jq

## Disclaimer

This repository is for educational and informational purposes only. <br />
The author assumes no liability for any damages that may arise from the use of the contents of this repository.

## Contributions

Contributions are always welcome! If you find an error or would like to suggest an improvement, please create an issue.
