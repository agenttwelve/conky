#!/bin/bash
echo "Checking GitHub for updates"
sudo git pull
echo "Updating Conky configuration"
sudo cp -rf /home/agenttwelve/conky/conky.conf /etc/conky
