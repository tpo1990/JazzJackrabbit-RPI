#!/bin/bash

HEIGHT=00
WIDTH=00
CHOICE_HEIGHT=4
DIALOG_CANCEL=2
BACKTITLE="This script has been created by tpo1990"
TITLE="Jazz Jackrabbit Raspberry Pi Install Script"
MENU="Choose one of the following options:"

OPTIONS=(1 "Install Jazz Jackrabbit RetroPie"
         2 "Install Jazz Jackrabbit Desktop")

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
			echo "Installing Jazz Jackrabbit on RetroPie"
		./Scripts/Openjazz-Install-RetroPie.sh
            ;;
        2)
            echo "Installing Jazz Jackrabbit on Desktop"
		./Scripts/Openjazz-Install-Desktop.sh
            ;;
esac
