#!/bin/bash

cores=$(cat /proc/cpuinfo | grep processor | wc -l);
if [ "$cores" == 1 ]; then
  echo One CPU detected...
  sudo cp -rf ~/conky/configs/gpu/gpu1core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 2 ]; then
  echo Two CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu2core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 4 ]; then
  echo Four CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu4core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 8 ]; then
  echo Eight CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu8core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 12 ]; then
  echo Twelve CPUs detected
  sudo cp -rf ~/conky/configs/gpu/gpu12core.conf /etc/conky/conky.conf && echo Updated Configuration

fi;

sudo killall conky
sudo conky
