read -p "Enter the wallet's verification key(Public key): " WALLETNAME

cardano-cli address key-hash --payment-verification-key-file wallets/$WALLETNAME --out-file $WALLETNAME.pkh