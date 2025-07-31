#!/bin/bash

# Check if bluetooth is powered on
power_on=$(bluetoothctl show | grep -i "powered: yes")

if [[ -z $power_on ]]; then
    echo "OFF"
else
    echo "ON"
fi

# Handle toggle
if [[ "$1" == "--toggle" ]]; then
    if [[ -z $power_on ]]; then
        bluetoothctl power on
    else
        bluetoothctl power off
    fi
fi	
