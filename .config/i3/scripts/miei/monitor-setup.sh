#!/bin/bash

# Wait for X and NVIDIA to be fully ready
sleep 3

# Set up NVIDIA provider output
xrandr --setprovideroutputsource NVIDIA-G0 modesetting

# Detect external monitor dynamically
if xrandr | grep -q "HDMI-1-0 connected"; then
  xrandr --output HDMI-1-0 --auto --right-of eDP-1
fi
