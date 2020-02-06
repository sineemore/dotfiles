#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\h \W "
HISTFILE=~/..bash_history
HISTSIZE=333333
HISTCONTROL=ignoreboth

alias l='ls -Alhtr --color=auto'
alias xq='xbps-query -Rs'
alias xi='sudo xbps-install'
alias mount='sudo mount'
alias umount='sudo umount'
alias sv='sudo sv'
alias alsamixer='alsamixer --no-color'
alias g=git

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\C-H": backward-kill-word'
bind '"\e[M": kill-word'
bind '"\e[P": delete-char'

set_title() {
	/usr/bin/printf '\e]2;%s\e\' "$1"
}

cd() {
	builtin cd "$@" && \
	set_title "$PWD"
}

set_title "$PWD"

human() {
	numfmt --to iec
}

[ -f /usr/share/bash-completion ] && . /usr/share/bash-completion