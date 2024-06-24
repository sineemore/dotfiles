# Go version manager
export GOPATH="$HOME/go"
export GOROOT="$HOME/.go"

PATH="$PATH:$HOME/.npm-packages/bin"
PATH="$GOPATH/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.bin:$PATH"

export EDITOR=vim
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CONFIG_HOME="$HOME/.config"

[ -f $HOME/.secrets/work.env ] && . $HOME/.secrets/work.env
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
