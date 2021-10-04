## Milestone #2: EthereumJS and Lighthouse

**WARNING: this does not work, EthereumJS is returning an odd response to `eth_getBlockByNumber`.**

References:
- A potential command to run ethereumjs: https://github.com/ethereumjs/ethereumjs-monorepo/pull/1512#issuecomment-933039405
- Install docs: https://github.com/ethereumjs/ethereumjs-monorepo/blob/master/config/MONOREPO.md


## How To Run

This testnet requires 3 terminal processes, one for EthereumJS one for a beacon node
and one for a validator client. See the per-terminal commands below.

### Terminal 1: EthereumJS

```bash
git clone git@github.com:ethereumjs/ethereumjs-monorepo.git
cd ethereumjs-monorepo
git checkout merge-contd-2
git submodule init && git submodule update
npm i
cd packages/client
npm run client:start -- --gethGenesis=../../../genesis.json --rpc --rpcEngine --loglevel=debug
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
