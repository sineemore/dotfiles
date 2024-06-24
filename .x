#!/usr/bin/env bash

source ~/.bash_profile

if xrandr | grep -q -e 'DP-1-4 connected'
then
	xrandr --output DP-1-4 --mode 2560x1440 --rate 360
fi

darkman set $(darkman get)

xset -dpms
xset r rate 200 100
setxkbmap -layout us,ru -option grp:caps_toggle

exec dbus-launch --exit-with-x11 --close-stderr runsvdir -P ~/.service/x
