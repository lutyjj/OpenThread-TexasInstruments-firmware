#!/bin/bash -e

# Install dependencies
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install git wget sudo tzdata make zip -y

# Bootstrap ot-ti
cd ot-ti
./script/bootstrap
mkdir -p $HOME/ti
ln -s /opt/ti/sysconfig_1.18.1 $HOME/ti/sysconfig_1.18.1