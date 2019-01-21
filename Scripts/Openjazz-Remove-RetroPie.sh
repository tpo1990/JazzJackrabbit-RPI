#!/bin/bash

# Script version 1.0
# This script is created by tpo1990

# This will remove OpenJazz - Jazz Jackrabbit source port in RetroPie.

echo "Uninstalling Jazz Jackrabbit for RetroPie. Please wait"

# Clean up by removing openjazz folder in roms ports folder.

sudo rm -r /home/pi/RetroPie/roms/ports/openjazz

# Remove .sh file in RetroPie roms ports folder.

sudo rm -r /home/pi/RetroPie/roms/ports/JazzJackrabbit.sh
