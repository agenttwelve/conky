#!/bin/bash
cd /home/agenttwelve
unset GIT_DIR
sudo git pull
sudo cp -rf /home/agenttwelve/conky/conky.conf /etc/conky
