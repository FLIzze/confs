#!/bin/bash

pkill -x rofi || true

power_icon="$HOME/confs/img/power.png"
restart_icon="$HOME/confs/img/restart.png"
logout_icon="$HOME/confs/img/logout.png"
sleep_icon="$HOME/confs/img/sleep.png"

rofi_menu() {
    echo -en "Power\0icon\x1f$power_icon\n"
    echo -en "Restart\0icon\x1f$restart_icon\n"
    echo -en "Logout\0icon\x1f$logout_icon\n"
    echo -en "Sleep\0icon\x1f$sleep_icon\n"
}

CHOICE=$(rofi_menu | /usr/bin/rofi -dmenu -theme power-menu.rasi -show-icons)

case "$CHOICE" in
    "Power") systemctl poweroff ;;
    "Restart") systemctl reboot ;;
    "Logout") loginctl terminate-user "$USER" ;;
    "Sleep") systemctl suspend ;;
    *) exit 1 ;;
esac

