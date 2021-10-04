## Milestone #2: Geth and Lighthouse

References:
	- Geth instructions: https://notes.ethereum.org/@9AeMAlpyQYaAAyuj47BzRw/rkwW3ceVY
	- Geth PR: https://github.com/ethereum/go-ethereum/pull/23607

## How To Run

This testnet requires 3 terminal processes, one for geth one for a beacon node
and one for a validator client. See the per-terminal commands below.

### Terminal 1: Geth

```bash
git clone git@github.com:MariusVanDerWijden/go-ethereum.git
cd go-ethereum
git checkout merge-interop-spec
make
cd ..
./go-ethereum/build/bin/geth --catalyst --http --ws -http.api "engine" --datadir "./datadir" init genesis.json
./go-ethereum/build/bin/geth --catalyst --http --ws -http.api "engine" --datadir "./datadir" account import sk.json
./go-ethereum/build/bin/geth --catalyst --http -http.api "engine,eth" --datadir "./datadir" --allow-insecure-unlock --unlock "0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b" --password "" --nodiscover console
```

### Terminal 2: Lighthouse Beacon Node

```bash
cd m2_lighthouse
./start_beacon_node.sh
```

*Note: it's important to start the beacon node before the validator client
since that script also generates the testnet configuration.*

### Terminal 3: Lighthouse Validator Client

```bash
cd m2_lighthouse
./start_validator_client.sh
```
