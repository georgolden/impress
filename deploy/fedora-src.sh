#!/bin/bash
dnf -y update
dnf -y install wget mc gcc-c++
dnf -y install psmisc
dnf -y groupinstall "Development Tools"
cd /usr/src
wget https://nodejs.org/dist/v7.7.1/node-v7.7.1.tar.gz
tar zxf node-v7.7.1.tar.gz
rm -f ./node-v7.7.1.tar.gz
cd node-v7.7.1
./configure
make
make install
cd ~
rm -rf /usr/src/node-v7.7.1
ln -s /usr/local/bin/node /bin
ln -s /usr/local/bin/npm /bin
sudo mkdir /ias
cd /ias
sudo npm install nodemailer websocket geoip-lite
sudo npm install impress --unsafe-perm
