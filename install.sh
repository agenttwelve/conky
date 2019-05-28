#!/bin/bash

gpu=$(test -f /etc/X11/xorg.conf; echo $?);
os=$(lsb_release -d | cut -c14-);

if [[ "$os" =~ "Pop!" ]]; then
 sudo cp -rf assets/popos-logo.png /etc/conky/os-logo.png && echo Pop!_OS Detected
elif [[ "$os" =~ "Manj" ]]; then
  sudo cp -rf assets/manjaro-logo.png /etc/conky/os-logo.png && echo Manjaro Detected
elif [[ "$os" =~ "Ubuntu" ]]; then
  sudo cp -rf assets/ubuntu-logo.png /etc/conky/os-logo.png && echo Ubuntu Detected
elif [[ "$os" =~ "Debian" ]]; then
  sudo cp -rf assets/debian-logo.png /etc/conky/os-logo.png && echo Debian Detected
elif [[ "$os" =~ "Mint" ]]; then
  sudo cp -rf assets/mint-logo.png /etc/conky/os-logo.png && echo Linux Mint Detected
elif [[ "$os" =~ "Arch" ]]; then
  sudo cp -rf assets/arch-logo.png /etc/conky/os-logo.png && echo Arch Linux Detected
elif [[ "$os" =~ "Gentoo" ]]; then
  sudo cp -rf assets/gentoo-logo.png /etc/conky/os-logo.png && echo Gentoo Detected
elif [[ "$os" =~ "Puppy" ]]; then
  sudo cp -rf assets/puppy-logo.png /etc/conky/os-logo.png && echo Puppy Linux Detected
elif [[ "$os" =~ "Raspbian" ]]; then
  sudo cp -rf assets/raspbian-logo.png /etc/conky/os-logo.png && echo Raspbian Detected
fi;


if [ "$gpu" == 1 ]; then
  echo Dedicated GPU not detected
  ( "scripts/nogpu.sh" )
else
  echo Dedicated GPU found
  ( "scripts/gpu.sh" )
fi;
