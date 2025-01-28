#!/bin/bash

VERSION=$1

echo "[SERVER]"
for ver in 15.0 14.0 13.0; do
    URL="https://github.com/Oxen-AI/Oxen/releases/download/v$VERSION/oxen-server-mac-$ver.tar.gz"
    echo "URL_$ver=$URL"
    wget -q $URL
    echo "HASH_$ver=$(shasum -a 256 "oxen-server-mac-$ver.tar.gz" | awk '{print $1}')"
done

rm *.tar.gz
