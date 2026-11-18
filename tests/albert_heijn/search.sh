#!/bin/bash

TOKEN=$(jq -r '.access_token' auth.json)

curl "https://api.ah.nl/mobile-services/product/search/v2"
     -K "./general.conf" \
     -H "Authorization: Bearer $TOKEN" \
     --url-query "query=$1" \
     --url-query "page=0" \
     --url-query "size=50" \
     --url-query "sortOn=RELEVANCE" \
     
