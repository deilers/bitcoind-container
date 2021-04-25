#!/bin/bash
apt-get update
apt-get install wget

wget https://bitcoincore.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz
wget https://bitcoincore.org/bin/bitcoin-core-0.21.0/SHA256SUMS.asc
wget https://bitcoin.org/laanwj-releases.asc

sha256sum SHA256SUMS.asc --ignore-missing > checksum
sha256sum -c checksum

gpg --import ./laanwj-releases.asc
gpg --refresh-keys
gpg --verify SHA256SUMS.asc

tar -xvf bitcoin-0.21.0-x86_64-linux-gnu.tar.gz
install -m 0755 -o root -g root -t /usr/local/bin bitcoin-0.21.0/bin/*