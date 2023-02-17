#! /usr/bin/bash
cardano-node run --config $HOME/git/pre-production-config/config.json \
--database-path $HOME/git/db/ \
--socket-path $HOME/git/db/node.socket \
 --host-addr 0.0.0.0 \
 --port 1337 \
--topology $HOME/git/pre-production-config/topology.json