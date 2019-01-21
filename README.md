# JazzJackrabbit-RPI
Jazz Jackrabbit for Raspberry Pi

Jazz Jackrabbit - OpenJazz source port
Jazz Jackrabbit can now be built and run on our Raspberry Pi with the source port called "OpenJazz". This port relies on SDL1 libs and is working in RetroPie, but it need some small adjustments.
2019-01-21-135654_1280x720_scrot.png

The game is fully playable and supports multiplayer.
The script provides an automatic installation and uninstallation for compiling and building on Raspberry Pi and RetroPie.
Download/Clone script made by me:
Github repository
Install time: 5-10 minutes

Build process
1: Download and install necessary required libs for SDL and etc.
2: Create folder openjazz or clone from github.
3: Compile/install openjazz source port
4: Download Jazz Jackrabbit Shareware and extract into root of openjazz folder.
5: Create shortcut on Raspbian desktop or create JazzJackrabbit.sh file into Ports folder in RetroPie.

Registered/Full version:
Replace shareware files with registered/full version in the root of openjazz folder.

Notes:
This build can be played but for now it is to be considered as experimental since there are some small issues that need to be fixed. No sound in game and multiplayer has not been tested yet. It appears that the resolution and scale settings needs to be changed in-game to accommodate the screen settings of Raspberry Pi.

Disclaimer:
This installation script is provided as is. Im not responsible for anything happening with your Raspberry Pi including corruption of SD card, Hardware damage. For support and help you can contact me here on RetroPie forums.
