# Lighthouse Merge F2F

This repository contains various resources used by the Lighthouse team for the
Merge F2F in October 2021.

See the ["Merge F2F" PR](https://github.com/sigp/lighthouse/pull/2620) for more
information about Lighthouse and the Merge F2F.

## M2

### Tracker

- Geth: ✅
- Nethermind: ✅
- Besu: [Blocked on Besu](https://github.com/hyperledger/besu/issues/2830#issuecomment-933050977)
- Erigon: They have not yet met M1.
- EthereumJS: They have not yet met M1.

### Reproducing the M2 testnets

The directories starting with `m2_` are reproducible examples of Lighthouse
meeting the M2 milestones.

- The `m2_lighthouse` directory contains scripts required to run Lighthouse for
all the M2 testnets.
- The `m2_<EL-team>` directories contain instructions for running the M2 milstone
for Lighthouse and that client team.

For example, to run "M2 Lighthouse/Geth", go to `m2_geth` and follow the readme
there.

#### Note

When running Lighthouse without enough peers you'll see this log:

```
Oct 02 16:49:58.013 WARN Could not publish message               error: InsufficientPeers, service: libp2p
```

You can just ignore it, the chain will still build out fine. Bonus points to
anyone who makes a PR that allows pushing that log to down to debug with a CLI
flag.

## M3

To run an M3 testnet we need the EL client to provide a block that has a total
difficulty `< TTD`, and then a child of that block that has a total difficulty
`>= TTD`. As of 2021/10/02, none of the EL teams have this ready. We are
therefore unable to proceed.

Once they're ready, I think we can just `cp m2_lighthouse m3_lighthouse` and
then change the `lcli` fork-epochs in the `./start_beacon_node.sh` script to
something like:

```
	--altair-fork-epoch 1 \
	--merge-fork-epoch 2 \
```
