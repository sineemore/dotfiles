#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#= test "$(hostname)"  = default && echo "PS1='\W '"
#= test "$(hostname)" != default && echo "PS1='\h \W '"
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

set_title() { printf '\e]2;%s\e\' "$1"; }
write_osc_cwd() { printf '\e]7;%s\a' "$PWD"; }

cd() {
	builtin cd "$@" && write_osc_cwd && set_title "$PWD"
}

write_osc_cwd
set_title "$PWD"

[ -f /usr/share/bash-completion ] && . /usr/share/bash-completion