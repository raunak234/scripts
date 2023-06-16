#!/bin/sh

ssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | rofi -dmenu -p "select wifi" |  cut -d' ' -f3)
pass=$(echo "" | rofi -dmenu -config ~/.config/rofi/search.rasi -p "Enter Password: " )
nmcli device wifi connect $ssid password $pass
