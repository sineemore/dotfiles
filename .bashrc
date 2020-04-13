#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#= test "$(hostname)"  = default && echo "PS1='\W '"
#= test "$(hostname)" != default && echo "PS1='\h \W '"
HISTFILE=~/..bash_history
HISTSIZE=333333
HISTCONTROL=ignoreboth


bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\C-H": backward-kill-word'
bind '"\e[M": kill-word'
bind '"\e[P": delete-char'


set_title() {
	printf '\e]2;%s\e\' "$1"
}

write_osc_cwd() {
	printf '\e]7;%s\a' "$PWD"
}

cd() {
	builtin cd "$@" \
	&& write_osc_cwd \
	&& set_title "$PWD"
}

write_osc_cwd
set_title "$PWD"


alias g=git
alias l='ls -Alhtr --color=auto'
alias xi='sudo xbps-install'
alias xq='xbps-query -Rs'


alias alsamixer='alsamixer --no-color'
alias ls='ls --color=auto'
alias man='man -C ~/.man.conf'
alias mount='sudo mount'
alias umount='sudo umount'



export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


[ -f /usr/share/bash-completion ] && . /usr/share/bash-completion
