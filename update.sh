#!/bin/bash
echo "Checking GitHub for updates"
sudo git pull
echo "Updating Conky configuration"
./install.sh
