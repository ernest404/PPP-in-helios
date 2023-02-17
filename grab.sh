# Scripts are stored on the blockchain as part of transaction output.
cardno-cli build transaction \
--tx-in 28cd571bb02c01acfed39af75db3a4ca6d037ea672165be11fd81c45675bcab3#0 \
--tx-in 973489068e187f800e3e5745e8da632be4966857cc19eca8cbe0d71684bb5967#0 \
--tx-in-datum-value "42" \
--tx-in-redeemer-value "42" \