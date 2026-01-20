`sudo systemctl restart NetworkManager`

### External display managed by xrandr
Discover external display: `xrandr`  
extend: `xrandr --output HDMI-1-0 --primary --left-of eDP-1`  
mirror: `xrandr --output HDMI-1-0 --same-as eDP-1 --auto`
