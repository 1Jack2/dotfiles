#!/usr/bin/env bash

# ================== MY CUSTOM ==================
# ===============================================

# ================== PROGRAMMING ==================
# Set up Node Version Manager
[[ -r "/usr/share/nvm/init-nvm.sh" ]] && source /usr/share/nvm/init-nvm.sh

# cargo
export PATH=/home/jack/.cargo/bin:$PATH


# ================== ENVIRONMENT ==================
export VISUAL=nvim
export EDITOR=nvim


# ================== ALIAS ==================
alias vi='nvim'
alias cp="cp -i"
alias rm="rm -i"
alias mv='mv -i'
alias gs='git status'
alias gb='git branch'
alias pc='proxychains4'
alias cm='chezmoi'
alias gu='gitui'
alias cht='cheat'

# https://github.com/andreafrancia/trash-cli/blob/master/README.rst
# Then, if you really want to use rm, simply prepend a backslash to bypass the alias:
# \rm file-without-hope
alias rm='echo "This is not the command you are looking for."; false'


# ================== SOFTWARE ==================
# https://github.com/trapd00r/LS_COLORS
[[ -r ~/.local/share/lscolors.sh ]] && . ~/.local/share/lscolors.sh

# proxychains-ng
export PROXYCHAINS_CONF_FILE=~/.proxychains.conf

# starship
export BASH_IT_THEME=''
eval "$(starship init bash)"

# zoxide
eval "$(zoxide init bash)"

# broot
[[ -r "/home/jack/.config/broot/launcher/bash/br" ]] && source /home/jack/.config/broot/launcher/bash/br

# fzf
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash


# ================== proxy ==================
# BASH_IT_HTTP_PROXY and BASH_IT_HTTPS_PROXY: Define the proxy URL to be used, e.g. 'http://localhost:1234'
# BASH_IT_NO_PROXY: A comma-separated list of proxy exclusions, e.g. '127.0.0.1,localhost'
export BASH_IT_HTTP_PROXY='http://127.0.0.1:7890'
export BASH_IT_HTTPS_PROXY='http://127.0.0.1:7890'
export BASH_IT_NO_PROXY='127.0.0.1,localhost'
