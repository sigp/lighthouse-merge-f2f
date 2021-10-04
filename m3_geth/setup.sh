#!/bin/bash
rm -rf ./datadir
./geth --catalyst --http --ws -http.api "engine" --datadir "./datadir" init genesis.json
./geth --catalyst --http --ws -http.api "engine" --datadir "./datadir" account import sk.json
./geth --catalyst --http -http.api "engine,eth" --datadir "./datadir" --allow-insecure-unlock --unlock "0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b" --password "" --nodiscover console
