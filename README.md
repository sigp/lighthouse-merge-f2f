# Lighthouse Merge F2F

This repository contains various resources used by the Lighthouse team for the
Merge F2F in October 2021.

See the ["Merge F2F" PR](https://github.com/sigp/lighthouse/pull/2620) for more
information about Lighthouse and the Merge F2F.

## M2

### Tracker

- Geth: ✅
- Nethermind: [Blocked on Nethermind](https://github.com/NethermindEth/nethermind/pull/3453#issuecomment-932693651)
- Besu: They are ready, we haven't made a testnet yet.
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
