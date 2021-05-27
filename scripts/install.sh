#!/bin/bash -x
cd ~
curl -O https://bitcoin.org/bin/bitcoin-core-0.21.1/bitcoin-0.21.1-x86_64-linux-gnu.tar.gz
tar -zxf bitcoin-0.21.1-x86_64-linux-gnu.tar.gz
sudo install -m 0755 -o root -g root -t /usr/local/bin bitcoin-0.21.1/bin/*
user=`whoami`
command="bitcoind -testnet -daemon -conf=\/home\/$user\/.bitcoin\/bitcoin.conf"
sudo sed -i "s/exit 0/$command/g" /etc/rc.local
sudo sh -c "echo exit 0 >> /etc/rc.local"
bitcoind -testnet -daemon
sudo pkill -9 -f bitcoind
rpc_password=`openssl rand -base64 32`
random=`date +%s`
rpcuser=`echo bitcoin-node-$random`
echo rpcuser=$rpcuser > /home/$user/.bitcoin/bitcoin.conf
echo rpcpassword=$rpc_password >> /home/$user/.bitcoin/bitcoin.conf
bitcoind -daemon -testnet -conf=$HOME/.bitcoin/bitcoin.conf
