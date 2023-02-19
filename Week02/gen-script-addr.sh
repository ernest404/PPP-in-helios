read -p "Enter your script's name: " NAME

cardano-cli address build \
--payment-script-file $NAME.json \
--out-file $NAME.addr \
--testnet-magic 1
  