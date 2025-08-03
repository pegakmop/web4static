#!/bin/sh

REPO="web4static"
SCRIPT="web4static.sh"
TMP_DIR="/tmp"
WEB4STATIC_DIR="/opt/share/www/w4s"

if ! opkg list-installed | grep -q "^curl"; then
  opkg update
  opkg install curl
fi

mkdir -p "$WEB4STATIC_DIR"
curl -L -s "https://raw.githubusercontent.com/pegakmop/$REPO/legacy/$SCRIPT" --output $TMP_DIR/$SCRIPT
mv "$TMP_DIR/$SCRIPT" "$WEB4STATIC_DIR/$SCRIPT"
chmod +x $WEB4STATIC_DIR/$SCRIPT
cd /opt/bin
ln -sf $WEB4STATIC_DIR/$SCRIPT /opt/bin/web4static
#уведомления вырезаны в целях не захламлять и не слать ошибки в основной репозиторий
$WEB4STATIC_DIR/$SCRIPT
