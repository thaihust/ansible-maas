#!/bin/sh

PROFILE=cloud
API_KEY_FILE=/tmp/api_key
API_SERVER=localhost:5240

MAAS_URL=http://$API_SERVER/MAAS/api/2.0

maas-region apikey --username=$PROFILE > $API_KEY_FILE
maas login $PROFILE $MAAS_URL - < $API_KEY_FILE
