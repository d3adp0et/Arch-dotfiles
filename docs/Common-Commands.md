`sudo systemctl restart NetworkManager`

### External display managed by xrandr and alsamixer (audio)
Discover external display: `xrandr`  
extend: `xrandr --output HDMI-1-0 --primary --left-of eDP-1`  
mirror: `xrandr --output HDMI-1-0 --same-as eDP-1 --auto`  
audio: `alsamixer` > Press F6

### ssh
to do stuff like clear, text editors, copy/paste etc
-> `export TERM=xterm-256color`
