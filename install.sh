#!/bin/sh

destbin=~/.local/bin
config=${XDG_CONFIG_HOME:-~/.config}

for n in bin/*; do
	cp "$n" "${destbin}/$(basename $n)"
done

cp mkshrc ~/.mkshrc
cp visrc.lua "$config"/vis/visrc.lua
cp vis-theme-white.lua "$config"/vis/themes/white.lua
cp xinitrc ~/.xinitrc
cp dunstrc ~/.dunstrc
