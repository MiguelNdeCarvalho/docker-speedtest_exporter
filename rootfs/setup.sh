#!/bin/sh

LAST_VERSION=`curl --silent "https://api.github.com/repos/nlamirault/speedtest_exporter/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'`
DOWNLOAD_URL=`https://bintray.com/artifact/download/nlamirault/oss/speedtest_exporter-${LAST_VERSION}_linux_${ARCH}`

mkdir /app
wget -qO /app/node_exporter $DOWNLOAD_URL
chmod +x /app/node_exporter
