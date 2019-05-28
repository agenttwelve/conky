#!/bin/bash

cores=$(cat /proc/cpuinfo | grep processor | wc -l);
net=$(route | grep '^default' | grep -o '[^ ]*$');

if [ "$cores" == 1 ]; then
  echo One CPU detected...
  sudo cp -rf ~/conky/configs/nogpu/nogpu1core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 2 ]; then
  echo Two CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu2core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 4 ]; then
  echo Four CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu4core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 8 ]; then
  echo Eight CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu8core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 12 ]; then
  echo Twelve CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu12core.conf /etc/conky/conky.conf && echo Updated configuration

fi;

echo Updating configuration with correct network interface
sudo sed -i -e "s/acinet/$net/g" /etc/conky/conky.conf

sudo killall conky
sudo conky -q
