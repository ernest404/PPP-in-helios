#! /usr/bin/bash

cardano-cli transaction build \
--babbage-era \
--testnet-magic 1 \
--tx-in e9afa052824da593a6574acb671e8d7f92f3277ce22f9b57fd810e7691727839#0 \
--tx-out-datum-hash 9e1199a988ba72ffd6e9c269cadb3b53b5f360ff99f112d9b2ee30c4d74ad88b \
--tx-out addr_test1wp25cyz4v5czmm6fx7edpgm0pwsguqk2drl69x0v208gdvgvjlfkm+20000000 \
--change-address $(cat wallets/wallet01.addr) \
--out-file tx.draft

# Sign a Transaction

cardano-cli transaction sign \
--tx-body-file tx.draft \
--signing-key-file wallets/wallet01.skey \
--testnet-magic 1 \
--out-file tx.signed

# Submit a Transaction

cardano-cli transaction submit \
--testnet-magic 1 \
--tx-file tx.signed