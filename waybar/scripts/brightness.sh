#!/bin/bash

device=$(ls /sys/class/backlight | head -n1)
curr=$(cat /sys/class/backlight/$device/brightness)
max=$(cat /sys/class/backlight/$device/max_brightness)
percent=$((curr * 100 / max))

echo "󰃠 ${percent}%"
