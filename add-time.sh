#!/bin/bash
source $1
START=`date +%Y-%m-%dT03:30:00.000Z`
END=`date +%Y-%m-%dT12:30:00.000Z`

echo "\"$START\""
echo "\"$END\""

curl --location --request POST "https://api.clockify.me/api/v1/workspaces/$MY_WRKSPC/time-entries" \
--header 'Referer: hat' \
--header "X-Api-Key: $MY_KEY" \
--header 'Content-Type: application/json' \
--data-raw '{
  "start": "'"$START"'",
  "billable": "true",
  "description": "",
  "projectId": "'"$MY_PRJ"'",
  "end": "'"$END"'"
}'
