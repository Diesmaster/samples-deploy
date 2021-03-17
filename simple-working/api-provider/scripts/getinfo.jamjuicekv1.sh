#!/bin/bash
#rpcuser=changeme
#rpcpassword=alsochangeme
#rpcport=33063
source .env
rpcuser=$KV1_SMARTCHAIN_NODE_USERNAME
rpcpassword=$KV1_SMARTCHAIN_NODE_PASSWORD
rpcport=$KV1_SMARTCHAIN_NODE_RPC_PORT
echo $rpcuser $rpcpassword @ $rpcport
curl -s --user $rpcuser:$rpcpassword --data-binary "{\"jsonrpc\": \"1.0\", \"id\": \"curltest\", \"method\": \"getinfo\", \"params\": []}" -H 'content-type: text/plain;' http://127.0.0.1:$rpcport/
