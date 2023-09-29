#!/bin/bash
if [ ! -d "/home/services/geth/chain_data/geth" ]; then
    echo "Initializing directory..."
    ./geth_linux --datadir /home/services/geth/chain_data init /home/services/geth/genesis.json
fi

    ./geth_linux\
            --datadir /home/services/geth/chain_data\
            --config /home/services/geth/config.toml\
            --cache 8192
