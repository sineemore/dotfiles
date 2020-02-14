#!/bin/bash

PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.bin:$PATH"
PATH="$PATH:$HOME/.npm-packages/bin"
PATH="$PATH:$HOME/go/bin"

export EDITOR=vis
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CONFIG_HOME="$HOME/.config"
export SYSDIRS="/boot /usr /opt /var /etc"
export LESS=" -R "
export LESSOPEN="|$HOME/.lessopen.sh %s"
export LESSHISTFILE=-

if [ "$0" = -bash -a "$(tty)" = /dev/tty1 ]; then
	exec sxinit vt1 -keeptty &> /dev/null
fi

[ -f ~/.bashrc ] && . ~/.bashrc
