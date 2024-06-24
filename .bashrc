# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f /usr/share/bash-completion ] && . /usr/share/bash-completion

PS1='% '

alias l='ls -Alhtr --color=auto'
alias xi='sudo xbps-install'
alias xq='sudo xbps-query -Rs'
alias g='git'

HISTFILE=~/..bash_history
HISTSIZE=1000000
HISTCONTROL=ignoreboth

set_title() {
	printf '\e]2;%s\e\' "$1"
}

write_osc_cwd() {
	printf '\e]7;%s\a' "$PWD"
}

cd() {
	builtin cd "$@"
	write_osc_cwd
	set_title "$PWD"
}

write_osc_cwd
set_title "$PWD"
