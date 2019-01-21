#!/bin/bash

# Script version 1.0
# This script is created by tpo1990

#OpenJazz - Jazz Jackrabbit source port for RetroPie Install script.
#This will install OpenJazz - Jazz Jackrabbit source port in RetroPie.


# Download required dependencies and install them.
sudo apt-get install libsdl1.2debian libsdl-image1.2 libsdl-mixer1.2 libsdl-mixer1.2-dev libsdl-net1.2 libsdl-net1.2-dev.

# Create openjazz folder in RetroPie Ports and clone source files from git.
cd ~
cd /home/pi/RetroPie/roms/ports

mkdir openjazz

git clone https://github.com/AlisterT/openjazz.git

# Install OpenJazz from source.
cd ~
cd /home/pi/RetroPie/roms/ports/openjazz
sudo make

# Download Jazz Jackrabbit shareware files and extract into openjazz folder.
cd ~
cd /home/pi/RetroPie/roms/ports/openjazz
wget https://image.dosgamesarchive.com/games/jazz.zip
unzip jazz.zip

# Clean up by removing shareware file in the openjazz folder.

sudo rm -r /home/pi/RetroPie/roms/ports/openjazz/jazz.zip

# Create .sh file in RetroPie roms ports folder so that the port will be visible in Emulation Station.

echo "#!/bin/bash

cd /home/pi/RetroPie/roms/ports/openjazz

./OpenJazz" > /home/pi/RetroPie/roms/ports/JazzJackrabbit.sh

# Add Execute right to .sh file
cd ~
cd /home/pi/RetroPie/roms/ports/
sudo chmod +xrw JazzJackrabbit.sh
