#!/bin/bash

LAST_VERSION=`curl -s https://api.github.com/repos/nlamirault/speedtest_exporter/releases/latest | grep -Po '"tag_name": "\K.*?(?=")'`
LAST_VERSION="${LAST_VERSION:1}"

mkdir /app
cd /app
wget -q -O speedtest_exporter https://bintray.com/artifact/download/nlamirault/oss/speedtest_exporter-${LAST_VERSION}_linux_${ARCH}
chmod +x /app/speedtest_exporter
