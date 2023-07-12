#!/bin/bash

# Update sudo
sudo apt update
# Install Python 3.7
sudo apt install -y python3.7
python3 --version
# Install pip
sudo -H pip3 install --upgrade pip
# Install and start Redis server. Refer https://redis.io/download for help.
wget https://download.redis.io/releases/redis-6.2.4.tar.gz
tar -xzf redis-6.2.4.tar.gz
cd redis-6.2.4
make
# Ping your Redis server to verify if it is running. It will return "PONG"
redis-cli ping
# The server will start after make. Otherwise, use
src/redis-server
# Install dependencies - necessary Python packages - redis, opencensus, opencensus-ext-azure, opencensus-ext-flask, flask
cd ..
pip3 install -r requirements.txt
# Run the app from the Flask application directory
cd azure-vote/
python3 main.py
