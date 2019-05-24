#!/bin/bash

gpu=$(test -f /etc/X11/xorg.conf; echo $?);
if [ "$gpu" == 1 ]; then
  echo Dedicated GPU not detected
  ( "scripts/nogpu.sh" )
else
  echo Dedicated GPU found
  ( "scripts/gpu.sh" )
fi;
