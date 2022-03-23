#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodborg/4.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get --assume-yes update
apt-get --assume-yes install mongodb-org
exec bash
systemctl start mongod
systemctl enable mongod
