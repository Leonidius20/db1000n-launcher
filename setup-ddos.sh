#!/bin/bash

wget https://github.com/Arriven/db1000n/releases/download/v0.5.12/db1000n-v0.5.12-linux-amd64.tar.gz
tar -xvzf db1000n-v0.5.12-linux-amd64.tar.gz
sudo apt update
sudo apt install -y tor tor-geoipdb proxychains torsocks geoip-bin
echo "ExitNodes {ru} StrictNodes 1" >> /etc/tor/torrc 
sudo service tor start
sudo service tor restart
