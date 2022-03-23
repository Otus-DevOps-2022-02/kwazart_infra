#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list << EOF
deb https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse
EOF

curl https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

sudo apt update

# WireGuard server support
sudo apt -y install wireguard wireguard-tools

sudo ufw disable

sudo apt -y install mongodb-org
sudo systemctl enable mongod pritunl
sudo systemctl start mongod pritunl
