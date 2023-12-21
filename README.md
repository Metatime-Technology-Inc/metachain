# How to Run a Full Node on Metatime MetaChain

## Requirements

- 8 cores of CPU and 16 GB of memory (RAM)
- A broadband Internet connection with upload/download speeds of 50 Mbit/S
- 128 GB of free disk space, solid-state drive(SSD)

## Steps to Run a Full Node:
Download the pre-build binaries (Follow the instructions below):

### Linux
```bash
$ wget https://github.com/Metatime-Technology-Inc/metachain/raw/v2.2/geth/geth_linux
$ mv geth_linux geth
$ chmod -v u+x geth
```

Download the config files (Download genesis.json and config.toml):

```bash
$ wget https://raw.githubusercontent.com/Metatime-Technology-Inc/metachain/v2.2/geth/config.toml
$ wget https://raw.githubusercontent.com/Metatime-Technology-Inc/metachain/v2.2/geth/genesis.json
```

Write genesis state locally:

`./geth --datadir data init genesis.json`

You could see the following output:
```bash
INFO [12-21|14:00:34.476] Maximum peer count                       ETH=50 LES=0 total=50
INFO [12-21|14:00:34.489] Smartcard socket not found, disabling    err="stat /run/pcscd/pcscd.comm: no such file or directory"
INFO [12-21|14:00:34.528] Set global gas cap                       cap=50,000,000
INFO [12-21|14:00:34.540] Allocated cache and file handles         database=/home/services/geth/chain_data/geth/chaindata cache=16.00MiB handles=16
INFO [12-21|14:00:34.579] Opened ancient database                  database=/home/services/geth/chain_data/geth/chaindata/ancient/chain readonly=false
INFO [12-21|14:00:34.582] Writing custom genesis block 
INFO [12-21|14:00:34.603] Persisted trie from memory database      nodes=33 size=4.64KiB time=1.396292ms gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [12-21|14:00:34.625] Successfully wrote genesis state         database=chaindata hash=ef4dd9..fc0dc1
INFO [12-21|14:00:34.625] Allocated cache and file handles         database=/home/services/geth/chain_data/geth/lightchaindata cache=16.00MiB handles=16
INFO [12-21|14:00:34.687] Opened ancient database                  database=/home/services/geth/chain_data/geth/lightchaindata/ancient/chain readonly=false
INFO [12-21|14:00:34.688] Writing custom genesis block 
INFO [12-21|14:00:34.701] Persisted trie from memory database      nodes=33 size=4.64KiB time="518.5µs"  gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [12-21|14:00:34.716] Successfully wrote genesis state         database=lightchaindata hash=ef4dd9..fc0dc1
```

### Start Full Node:

`./geth --config config.toml --datadir data --cache 8000`