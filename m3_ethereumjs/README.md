## Milestone #3: EthereumJS and Lighthouse


References:
- A potential command to run ethereumjs: https://github.com/ethereumjs/ethereumjs-monorepo/pull/1512#issuecomment-933039405
- Install docs: https://github.com/ethereumjs/ethereumjs-monorepo/blob/master/config/MONOREPO.md


## How To Run

This testnet requires 3 terminal processes, one for EthereumJS one for a beacon node
and one for a validator client. See the per-terminal commands below.

### Terminal 1: EthereumJS

Use the following key pair for running the EthereumJS client and start mining:

```
Address: 0xf6b913c5747c0ae128adc0e41f0adfd88aff7bc9
Private key: 0x17eb958eb18cb2ecbf8ad26b9f008db9baa3d6dbf80ad949cf261f327e58ea6c
```


```bash
git clone git@github.com:ethereumjs/ethereumjs-monorepo.git
cd ethereumjs-monorepo
git checkout merge-contd-2
git submodule init && git submodule update
cd packages/client
npm run build
npm run client:start -- --gethGenesis=./test/testdata/geth_genesis_merge_interop_taunas_own_signer.json --rpc --rpcEngine --rpcport=8545 --loglevel=debug --mine --unlock=0xf6b913c5747c0ae128adc0e41f0adfd88aff7bc9
```

When prompted unlock the miner account with the private key from above.

### Terminal 2: Lighthouse Beacon Node

Update the terminal total difficulty in the `start_beacon_node` script to match the one specified in EthereumJS genesis file (66 in decimals, or 42 in hex).

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
