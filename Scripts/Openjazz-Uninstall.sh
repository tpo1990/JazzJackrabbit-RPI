#!/bin/bash

HEIGHT=00
WIDTH=00
CHOICE_HEIGHT=4
BACKTITLE="This script has been created by tpo1990"
TITLE="Jazz Jackrabbit Raspberry Pi Install Script"
MENU="Choose one of the following options:"

OPTIONS=(1 "Uninstall Jazz Jackrabbit RetroPie"
         2 "Uninstall Jazz Jackrabbit Desktop")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "Uninstalling Jazz Jackrabbit on RetroPie"
		./Scripts/Openjazz-Remove-RetroPie.sh
            ;;
        2)
            echo "Uninstalling Jazz Jackrabbit on Desktop"
		./Scripts/Openjazz-Remove-Desktop.sh
            ;;
esac
