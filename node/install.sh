#!/bin/bash -e

NODE_VERSION=v8.11.3
echo "================= Installing nodejs $NODE_VERSION ================="
wget https://nodejs.org/dist/"$NODE_VERSION"/node-"$NODE_VERSION"-linux-x64.tar.xz
tar -xvf node-"$NODE_VERSION"-linux-x64.tar.xz
cp -Rvf node-"$NODE_VERSION"-linux-x64/{bin,include,lib,share} /usr/local
npm install -g forever@0.14.2 grunt grunt-cli

# Install ursa-wrapper globally
mkdir /tmp/ursa-wrapper
cd /tmp/ursa-wrapper
npm install ursa-wrapper@1.0.0
mv node_modules/* /usr/local/lib/node_modules
