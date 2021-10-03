#!/usr/bin/env bash
#
# My custom .bashrc

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/usr/local/go/bin

export VISUAL=nvim
export EDITOR=nvim

# proxy
# BASH_IT_HTTP_PROXY and BASH_IT_HTTPS_PROXY: Define the proxy URL to be used, e.g. 'http://localhost:1234'
# BASH_IT_NO_PROXY: A comma-separated list of proxy exclusions, e.g. '127.0.0.1,localhost'
export BASH_IT_HTTP_PROXY='http://192.168.56.1:7890'
export BASH_IT_HTTPS_PROXY='http://192.168.56.1:7890'
export BASH_IT_NO_PROXY='127.0.0.1,localhost'

alias vi='nvim'
alias cp="cp -i"
alias rm="rm -i"
alias mv='mv -i'
alias gs='git status'
alias gb='git branch'
alias pc='proxychains4'
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

