#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.coincoin/coincoind.pid file instead
coincoin_pid=$(<~/.coincoin/testnet3/coincoind.pid)
sudo gdb -batch -ex "source debug.gdb" coincoind ${coincoin_pid}
