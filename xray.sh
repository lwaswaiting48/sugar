#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2fbee39b-1631-47a9-b62a-932281ea8b92"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

