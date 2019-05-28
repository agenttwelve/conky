# Agenttwelve's conky interface
This is my current Conky interface. It is a WIP but can currently be used to detect 1, 2, 4, 8, and 12 core CPUs (This includes threads).
It is currently only capable of checking for a Nvidia GPU or an Integrated GPU.
The install guide is assuming you already have Conky installed

## Pre-Requisites
Git

Conky

LSB (Used to detect OS)
```bash
sudo apt-get install lsb -y
```

## Install
To install, clone the master directory into your Home directory.
```bash
cd ~
sudo git clone https://github.com/agenttwelve/conky
```

Then enter the directory 
```bash
cd /conky
```
Execute the install command
```bash
./install.sh
```
