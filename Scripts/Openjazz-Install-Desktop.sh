#!/bin/bash

# Script version 1.0
# This script is created by tpo1990

#OpenJazz - Jazz Jackrabbit source port for Raspberry Pi Desktop Install script.
#This will install OpenJazz - Jazz Jackrabbit source port in Desktop.

# Download required dependencies and install them.
sudo apt-get install libsdl1.2debian libsdl-image1.2 libsdl-mixer1.2 libsdl-mixer1.2-dev libsdl-net1.2 libsdl-net1.2-dev.

# Create openjazz folder in Games folder and clone source files from git.
cd ~
cd /home/pi/
mkdir Games
cd /home/pi/Games/

git clone https://github.com/AlisterT/openjazz.git

# Install OpenJazz from source.
cd ~
cd /home/pi/Games/openjazz
sudo make

# Download Jazz Jackrabbit shareware files and extract into openjazz folder.
cd ~
cd /home/pi/Games/openjazz
wget https://image.dosgamesarchive.com/games/jazz.zip
unzip jazz.zip

# Clean up by removing shareware file in the openjazz folder.

sudo rm -r /home/pi/Games/openjazz/jazz.zip

# Create desktop shortcut file in desktop.

echo "[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=Jazz Jackrabbit
GenericName=OpenJazz
Comment=OpenJazz: a Jazz Jackrabbit source port
Exec=bash -c '/home/pi/Games/openjazz/OpenJazz;$SHELL'
Icon=/home/pi/Games/openjazz/windows/OpenJazz.ico
Terminal=true
Type=Application
Categories=Game
GenericName[en_US]=OpenJazz
" > /home/pi/Desktop/OpenJazz.desktop
