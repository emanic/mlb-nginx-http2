#!/bin/sh
echo -e "\"$VALID_APP_CERT\"" | python2 -c 'import sys,json; d=json.load(sys.stdin);print(d["value"])' > /etc/nginx/valid-app-cert.crt
echo -e "\"$VALID_APP_PRIV_KEY\"" | python2 -c 'import sys,json; d=json.load(sys.stdin);print(d["value"])' > /etc/nginx/valid-app-priv-key.key
exec /usr/sbin/nginx -g "daemon off;"
