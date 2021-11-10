# custom prompt
autoload -U colors && colors
PS1="%B%F{green}%~ >> %f%b"

# disable ctrl-s and ctrl-q
stty -ixon

# vi mode
bindkey -v
export KEYTIMEOUT=1

# history settings
HISTFILE="$HOME/.cache/zsh_history"
HISTSIZE=1000000
SAVEHIST=HISTSIZE
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY

setopt ALIASES
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# tab completion
autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)
setopt GLOB_COMPLETE

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/fzf/completion.zsh" ] && source "$HOME/.config/fzf/completion.zsh"
[ -f "$HOME/.config/fzf/key-bindings.zsh.zsh" ] && source "$HOME/.config/fzf/key-bindings.zsh.zsh"
[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
