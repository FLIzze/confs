#!/bin/bash
# ~/.config/waybar/scripts/battery-alert.sh

PERCENT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | awk '{print $2}' | tr -d '%')

if [ "$PERCENT" -ge 90 ]; then
        notify-send "🔋 Battery at $PERCENT%" "Consider unplugging to preserve battery health."
fi
