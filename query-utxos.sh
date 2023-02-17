read -p "Enter wallet to check utxos:" WALLET

cardano-cli query utxo \
--testnet-magic 1 \
--address $(cat $HOME/plutus/helios/PPP-in-helios/wallets/$WALLET.addr)
