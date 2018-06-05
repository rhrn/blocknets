#!/bin/sh
set -e

mkdir -p ~/.zcash

echo $ZCASH_NETWORK=1 > ~/.zcash/zcash.conf
echo addnode=$ZCASH_NODE >> ~/.zcash/zcash.conf
echo rpcuser=$ZCASH_RPCUSER >> ~/.zcash/zcash.conf
echo rpcpassword=$ZCASH_RPCPASSWORD >> ~/.zcash/zcash.conf

echo
exec "$@"
