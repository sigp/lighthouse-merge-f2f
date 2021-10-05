## M4 Lighthouse

This contains the scripts required to run Lighthouse in the M4 milestone.

It is assumed that users have installed `lighthouse` and `lcli` binaries from
[`merge-f2f`](https://github.com/sigp/lighthouse/pull/2620) branch of
Lighthouse.

Build Instructions:

```bash
git clone git@github.com:sigp/lighthouse.git
cd lighthouse
make
make install-lcli
```

This will install `lighthouse` and `lcli` in `~/.cargo/bin`. You will need to
ensure this is on your `PATH`.

Edit the vars.env to set:

 * `VALIDATOR_COUNT` # the number of validators in the testnet
 * `NODE_COUNT` # the number of beacon nodes (or separate validator processes)

Generate the validator keys:

```
$ ./gen_validator_keys.sh
```

Terminal 1 - start the beacon node

```
$ ./start_beacon_node.sh
```

The keys will be split up among the `$NODE_COUNT` validator processes. Each process (1..`$NODE_COUNT`) is started by running:

for each terminal in (1..`$NODE_COUNT`):

```
$ ./start_validator_client.sh [NODE_INDEX]
```


