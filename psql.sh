#!/bin/bash

# Add PostgreSQL repository
echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list

# Download and add PostgreSQL signing key
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update package lists
sudo apt-get update

# Install PostgreSQL
sudo apt-get -y install postgresql

# Check PostgreSQL status
sudo systemctl status postgresql

