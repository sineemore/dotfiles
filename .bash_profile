#!/bin/bash

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.npm-packages/bin"
export PATH="$PATH:$HOME/go/bin"

export EDITOR=vis
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CONFIG_HOME="$HOME/.config"
export SYSDIRS="/boot /usr /opt /var /etc"
export LESS=" -R "
export LESSOPEN="|$HOME/.lessopen.sh %s"
export LESSHISTFILE=-

if [ "$0" = -bash -a "$(tty)" = /dev/tty1 ]; then
	exec sxinit &> /dev/null
fi

[ -f ~/.bashrc ] && . ~/.bashrc
