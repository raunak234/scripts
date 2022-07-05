#!/bin/sh
hp_mac="1A:1B:00:03:9B:A4"


bluetoothctl power on
bluetoothctl connect $hp_mac

