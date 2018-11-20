#!/bin/sh

. ~/.profile

setxkbmap -layout us,ru -option grp:rctrl_toggle

slstatus &
dunst -conf ~/.dunstrc &

./.fehbg

exec dwm
