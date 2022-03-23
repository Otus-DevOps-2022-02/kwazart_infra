#!/bin/bash
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list


apt-get --assume-yes --allow-insecure-repositories update
apt-get install --assume-yes --reinstall gpgv libgcrypt20
apt-get --assume-yes install mongodb-org
systemctl start mongod
systemctl enable mongod
systemctl status mongod
