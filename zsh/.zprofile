# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/tmp/runtime"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export BROWSER=w3m
export BROWSER_GUI=qutebrowser
export EDITOR=nvim
export IMAGEVIEWER=sxiv
export READER=zathura
export TERM=xterm-256color
export TERMINAL=alacritty
export VISUAL=nvim
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

export CM_DIR="$XDG_CACHE_HOME/clipmenu"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GOPATH="$XDG_DATA_HOME/go"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export R_LIBS_USER="$XDG_DATA_HOME/R"

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
# PANEL_FONT="-*-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
PANEL_FONT="Iosevka Custom-13"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

# add .local/bin to PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/share/npm/bin:$GOPATH/bin"

# startx on tty1 on login
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg > /dev/null && startx
