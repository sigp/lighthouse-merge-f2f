## Milestone #2: Geth and Lighthouse

**Note: this testnet was run using
https://github.com/sigp/lighthouse/pull/2667.** Once that PR is merged,
`merge-f2f` will be the branch to use for these tests.

References:
	- Geth instructions: https://notes.ethereum.org/@9AeMAlpyQYaAAyuj47BzRw/rkwW3ceVY
	- Geth PR: https://github.com/ethereum/go-ethereum/pull/23607

Follow these steps:

## Terminal 1: Geth

```bash
git clone git@github.com:MariusVanDerWijden/go-ethereum.git
cd go-ethereum
git checkout merge-interop-spec
make
cd ..
./go-ethereum/build/bin/geth --catalyst --datadir "./datadir" init genesis.json
./go-ethereum/build/bin/geth --catalyst --http --ws -http.api "engine,eth" --datadir "./datadir"
```

## Terminal 2: Lighthouse Beacon Node

```bash
cd m2_lighthouse
./start_beacon_node.sh
```

*Note: it's important to start the beacon node before the validator client
since that script also generates the testnet configuration.*

## Terminal 2: Lighthouse Validator Client

```bash
cd m2_lighthouse
./start_validator_client.sh
```
