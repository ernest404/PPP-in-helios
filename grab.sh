# Scripts are stored on the blockchain as part of transaction output.
cardano-cli transaction build \
--tx-in 28cd571bb02c01acfed39af75db3a4ca6d037ea672165be11fd81c45675bcab3#1 \
--tx-in 973489068e187f800e3e5745e8da632be4966857cc19eca8cbe0d71684bb5967#0 \
--tx-in-datum-value "I" \
--tx-in-redeemer-value "42" \
--tx-in-script-file Week02/fortytwo.json \
--tx-in-collateral 28cd571bb02c01acfed39af75db3a4ca6d037ea672165be11fd81c45675bcab3#1 \
--change-address $(cat wallets/wallet02.addr) \
--tx-out $(cat wallets/wallet02.addr)+20000000 \
--out-file tx.draft \
--protocol-params-file protocol.json \
--babbage-era \
--testnet-magic 1

cardano-cli transaction sign \
--tx-body-file tx.draft \
--signing-key-file wallets/wallet02.skey \
--testnet-magic 1 \
--out-file tx.signed

cardano-cli transaction submit \
--tx-file tx.signed \
--testnet-magic 1