#!/bin/sh
echo -e "\"$VALID_APP_CERT\"" > /etc/nginx/valid-app-cert.crt
echo -e "\"$VALID_APP_PRIV_KEY\"" > /etc/nginx/valid-app-priv-key.key
exec /usr/sbin/nginx -g "daemon off;"
