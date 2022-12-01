#!/bin/sh
if [ ! -f UUID ]; then
  UUID="131CB9D3-F1ED-A53F-7A6F-3F6C406CD8D9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

