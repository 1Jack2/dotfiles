#!/usr/bin/env bash
#
# My custom .bashrc

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/usr/local/go/bin

export VISUAL=nvim
export EDITOR=nvim

alias vi='nvim'
alias cp="cp -i"
alias rm="rm -i"
alias mv='mv -i'
alias gs='git status'
alias gb='git branch'
alias proxy='proxychains4'
alias cm='chezmoi'

# https://github.com/trapd00r/LS_COLORS
. "/home/jack/.local/share/lscolors.sh"

# https://github.com/rupa/z
. ~/.z_jump/z.sh

# proxychains-ng
export PROXYCHAINS_CONF_FILE=~/.proxychains.conf

# starship
export BASH_IT_THEME=''
eval "$(starship init bash)"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

