#!/bin/bash

# jq also makes sure we only select the products that were queried on with lidl
curl --url "https://www.lidl.nl/q/api/search" \
  --url-query "q=$1" \
  --url-query "category=Eten & drinken" \
  --url-query "store=1" \
  --url-query "fetchsize=48" \
  --url-query "locale=nl_NL" \
  --url-query "assortment=NL" \
  --url-query "offset=0" \
  --url-query "version=2.1.0" \
  -H "accept: application/mindshift.search+json;version=2" \
  -H "referer: https://www.lidl.nl/q/search" \
  -H "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36" \
  | jq '.' > products.json

