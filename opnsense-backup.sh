#!/bin/bash

# set variables for webcalls
KEY="API Key"
SECRET="API Secret"
HOST="FQDN or IP of Host u want to Backup"
PATHCONFIG="Path were the backupfiles should be stored"
DATE=$(date +%Y%m%d)

# make the api request for config as xml and alias as json
curl -s -u "${KEY}":"${SECRET}" https://"${HOST}"/api/backup/backup/download -o "${PATHCONFIG}"/opnsense/opnsense-config-"${DATE}".xml
curl -s -u "${KEY}":"${SECRET}" https://"${HOST}"/api/firewall/alias/export | jq > "${PATHCONFIG}"/opnsense/opnsense-alias-"${DATE}".json

# check the backup destination for backups older then 14 days
find "${PATHCONFIG}" -type f -name "${HOST}"-config\*.xml -mtime +14 -delete
find "${PATHCONFIG}" -type f -name "${HOST}"-alias\*.json -mtime +14 -delete
