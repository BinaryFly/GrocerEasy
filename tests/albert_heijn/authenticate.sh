#!/bin/bash

# Run auth request
curl "https://api.ah.nl/mobile-auth/v1/auth/token/anonymous" \
     --config "general.conf" \
     --json '{ "clientId": "appie-ios" }' \
     -c "auth.cookie" \
     -o "auth.json"
