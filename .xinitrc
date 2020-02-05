#!/bin/sh
xsetroot -solid "#dddddd"
setxkbmap -layout us,ru -option grp:rctrl_toggle
xset r rate 200 100
slstatus &
exec dwm