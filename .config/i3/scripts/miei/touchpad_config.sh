#!/bin/bash
TOUCHPAD="ELAN1205:00 04F3:30E9 Touchpad"
xinput set-prop "$TOUCHPAD" "libinput Tapping Enabled" 1
xinput set-prop "$TOUCHPAD" "libinput Natural Scrolling Enabled" 1
