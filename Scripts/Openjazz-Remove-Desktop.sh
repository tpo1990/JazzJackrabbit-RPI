#!/bin/bash

# Script version 1.0
# This script is created by tpo1990

# This will remove OpenJazz - Jazz Jackrabbit source port in Desktop.

echo "Uninstalling Jazz Jackrabbit for Desktop. Please wait"

# Clean up by removing openjazz folder.

sudo rm -r /home/pi/Games/openjazz

# Remove .sh file in RetroPie roms ports folder.

sudo rm -r /home/pi/Desktop/OpenJazz.desktop
