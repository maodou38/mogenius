#!/bin/sh
if [ ! -f UUID ]; then
  UUID="131cb9d3-f1ed-a53f-7a6f-3f6c406cd8d9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

