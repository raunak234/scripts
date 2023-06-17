#!/bin/bash

while true; do
    battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

    if [ "$battery_level" -lt 10 ]; then
        notify-send --urgency=critical "Battery Low" "Battery level is ${battery_level}%"
    fi

    sleep 300  # Wait for 5 minutes before checking again
done
