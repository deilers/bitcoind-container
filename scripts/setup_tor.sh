#!/bin/bash

apt-get update
apt-get install gpg dirmngr apt-transport-https curl -y

echo 'deb https://deb.torproject.org/torproject.org focal main' >> /etc/apt/sources.list
echo 'deb-src https://deb.torproject.org/torproject.org focal main' >> /etc/apt/sources.list


curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

apt-get update
apt-get install tor -y