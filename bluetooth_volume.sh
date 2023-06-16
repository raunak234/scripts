#!/bin/bash

# Find the index of your Bluetooth headset
HEADSET_INDEX=$(pactl list short sinks | grep bluez_sink | awk '{print $1}')

if [ -n "$HEADSET_INDEX" ]; then
  # Set the volume to 20%
  pactl set-sink-volume "$HEADSET_INDEX" 20%
  echo "Bluetooth headset volume set to 20%"
else
  echo "Bluetooth headset not found or connected"
fi
