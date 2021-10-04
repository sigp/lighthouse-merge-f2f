#!/bin/bash
DATADIR="./datadir"
GETH_BINARY="./geth"
rm -rf $DATADIR

$GETH_BINARY --catalyst --http --ws -http.api "engine" --datadir $DATADIR init genesis.json
$GETH_BINARY --catalyst --http --ws -http.api "engine" --datadir $DATADIR account import sk.json
$GETH_BINARY --catalyst --http -http.api "engine,eth" --datadir  $DATADIR --allow-insecure-unlock --unlock "0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b" --password "" --nodiscover console
