#!/bin/bash

# Run auth request
curl --config "general.conf" \
     --json '{ "clientId": "appie-ios" }' \
     "https://api.ah.nl/mobile-auth/v1/auth/token/anonymous" \
     -c "auth.cookie" \
     -o "auth.json"
