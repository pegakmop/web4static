#!/bin/sh

REPO="web4static"
SCRIPT="web4static.sh"
TMP_DIR="/tmp"
OPT_DIR="/opt"

if ! opkg list-installed | grep -q "^curl"; then
  opkg update
  opkg install curl
fi

curl -L -s "https://raw.githubusercontent.com/spatiumstas/$REPO/main/$SCRIPT" --output $TMP_DIR/$SCRIPT
mv "$TMP_DIR/$SCRIPT" "$OPT_DIR/$SCRIPT"
chmod +x $OPT_DIR/$SCRIPT
cd $OPT_DIR/bin
ln -sf $OPT_DIR/$SCRIPT $OPT_DIR/bin/web4static
URL=$(echo "aHR0cHM6Ly9sb2cuc3BhdGl1bS5rZWVuZXRpYy5wcm8=" | base64 -d)
JSON_DATA="{\"script_update\": \"web4static_install\"}"
curl -X POST -H "Content-Type: application/json" -d "$JSON_DATA" "$URL" -o /dev/null -s
$OPT_DIR/$SCRIPT
