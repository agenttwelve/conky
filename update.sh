#!/bin/bash
cd /home/agenttwelve/conky
echo "Checking GitHub for updates"
sudo git pull
echo "updating Conky Configuration"
sudo cp -rf /home/agenttwelve/conky/conky.conf /etc/conky
