#!/bin/bash

cores=$(cat /proc/cpuinfo | grep processor | wc -l);
if [ "$cores" == 1 ]; then
  echo One CPU detected...
  sudo cp -rf ~/conky/configs/nogpu/nogpu1core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 2 ]; then
  echo Two CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu2core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 4 ]; then
  echo Four CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu4core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 8 ]; then
  echo Eight CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu8core.conf /etc/conky/conky.conf && echo Updated Configuration

elif [ "$cores" == 12 ]; then
  echo Twelve CPUs detected
  sudo cp -rf ~/conky/configs/nogpu/nogpu12core.conf /etc/conky/conky.conf && echo Updated Configuration



fi;

sudo killall conky
sudo conky -q
