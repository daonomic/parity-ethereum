#!/usr/bin/env bash
HEX=`echo "obase=16; $1" | bc`
echo "removing traces for block $HEX"
curl --data "{\"method\":\"trace_removeBlock\","params":[\"0x$HEX\"],\"id\":1,\"jsonrpc\":\"2.0\"}" -H "Content-Type: application/json" -X POST localhost:8545