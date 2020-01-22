#!/bin/bash

cores=$(cat /proc/cpuinfo | grep processor | wc -l);
net=$(route | grep '^default' | grep -o '[^ ]*$');
mon=$(xrandr | grep " connected " | awk '{ print$1 }' | wc -l);

if [ "$cores" == 1 ]; then
  echo One CPU detected...
  sudo cp -rf ~/conky/configs/gpu/gpu1core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 2 ]; then
  echo Two CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu2core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 4 ]; then
  echo Four CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu4core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 8 ]; then
  echo Eight CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu8core.conf /etc/conky/conky.conf && echo Updated configuration

elif [ "$cores" == 12 ]; then
  echo Twelve CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu12core.conf /etc/conky/conky.conf && echo Updated configuration

fi;

echo Updating configuration with correct network interface
sudo sed -i -e "s/acinet/$net/g" /etc/conky/conky.conf

echo Moving conky to right-most display
sudo sed -i -e "s/acmon/$mon/g" /etc/conky/conky.conf

sudo killall conky
sudo conky -q
