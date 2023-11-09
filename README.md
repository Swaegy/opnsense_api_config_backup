# OPNsense API Backup

A bash script used to access the OPNsense API remotely to backup the configuration.<br /><br />

## Requirements

OPNSense os-api-backup is not needed since Update 23.7.8. <br />
A Remote system for running the script and saving the output. <br />
(Iam using Debian for example, curl needs to be installed and jq to fix the formatting of the alias backup)<br /><br />

## Setup OPNsense

[Create OPNSense API Key and set permissions](https://github.com/ARC-XX/opnsense_api_config_backup/wiki/Create-OPNSense-API-Key-and-set-permissions)<br /><br />
    
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

https://docs.opnsense.org/development/api/core/firewall.html

https://github.com/curl/curl

https://github.com/stedolan/jq<br /><br />

## Disclaimer

This repository is for educational and informational purposes only. <br />
The author assumes no liability for any damages that may arise from the use of the contents of this repository.<br /><br />

## Contributions

Contributions are always welcome! If you find an error or would like to suggest an improvement, please create an issue.
