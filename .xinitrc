#!/bin/sh
xsetroot -solid "#dddddd"
setxkbmap -layout us,ru -option grp:rctrl_toggle
xset r rate 200 100
slstatus &
wpa_cli -i wlp3s0 -a _wpa_lockscreen &
exec dwm