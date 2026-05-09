#!/bin/sh
set -eu

echo "downloading xray"
wget -O xray.zip https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip

echo "installing"
unzip xray.zip
chmod +x xray
mv xray /usr/local/bin/xray

rm -f xray.zip

echo "installed!"
