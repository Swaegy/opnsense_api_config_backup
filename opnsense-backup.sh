#!/bin/bash

# API Key
KEY=""
# API Secret
SECRET=""
# FQDN or IP to opnsense host
HOST=""
# Path to where the Export should be saved to
PATHCONFIG=""

# Variable to Add to Name for unique naming for daily export
DATE=$(date +%Y%m%d)

# make the api request for config as xml and alias as json
curl -u "${KEY}":"${SECRET}" https://"${HOST}"/api/core/backup/download/this --create-dirs -o "$PATHCONFIG"/opnsense/opnsense-config-"${DATE}".xml

# check the backup destination for backups older then 14 days
find "${PATHCONFIG}" -type f -name "${HOST}"-config\*.xml -mtime +14 -delete
