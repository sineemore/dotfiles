#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\h \W '


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
alias ls='ls --color=auto'
alias man='man -C ~/.man.conf'
alias mount='sudo mount'
alias umount='sudo umount'

_completion_loader git
complete -o bashdefault -o default -o nospace -F __git_wrap__git_main g


[ -f /usr/share/bash-completion ] && . /usr/share/bash-completion


if command -v pyenv 1>/dev/null 2>&1
then
	eval "$(pyenv init -)"
fi
