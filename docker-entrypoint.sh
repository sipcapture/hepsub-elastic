#!/bin/bash

HOMER_IP="${HOMER_IP:-127.0.0.1}"
HOMER_PORT="${HOMER_PORT:-9080}"
API_URL="${API_URL:-http://127.0.0.1:9200}"
PUBLIC_IP="${PUBLIC_IP:-127.0.0.1}"
PUBLIC_PORT="${PUBLIC_PORT:-18088}"

sed -i "s/localhost/$HOMER_IP/g" /app/config.js
sed -i "s/9080/$HOMER_PORT/g" /app/config.js
sed -i "s/PUBLIC_IP_HERE/$PUBLIC_IP/g" /app/config.js
sed -i "s/18088/$PUBLIC_PORT/g" /app/config.js
sed -i "s/api_url/$API_URL/g" /app/config.js

echo "Launching API... "
cd /app
pm2 start elastic.js --watch
pm2 logs elastic &

exec "$@"

