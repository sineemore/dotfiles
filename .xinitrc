#!/bin/sh
xsetroot -solid "#dddddd"
setxkbmap -layout us,ru -option grp:rctrl_toggle
xset r rate 200 100
slstatus &
stw -F 'monospace:size=12' _stwstatus &
#= test -e /sys/class/net/wlp3s0 && cat wpa_cli.in.sh
exec dwm