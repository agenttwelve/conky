# Prerequisites
Git
```bash
sudo apt-get install git -y
```

Conky-All
```bash
sudo apt-get install conky-all -y
```

Mesa-utils (Used to detect GPU)
```bash
sudo apt-get install mesa-utils -y
```

LSB (Used to detect OS)
```bash
sudo apt-get install lsb-release -y
```

## Install
To install, clone the master directory into your Home directory.
```bash
cd ~
sudo git clone https://github.com/agenttwelve/conky
```

Then enter the directory 
```bash
cd conky
```
Execute the install command
```bash
./install.sh
```

##Running

Enter directory
```bash
cd ~/conky
```

Then launch conky
```bash
./start.sh
```

If you would like conky to start on boot, make sure to set the start script to launch with the system.

## Screenshot
<img src="https://user-images.githubusercontent.com/40524971/72910489-978e3980-3d06-11ea-870c-c7cbd3434411.png" alt="screenshot" width="300" height="500">
