#!/usr/bin/env bash
#
# My custom .bashrc

export VISUAL=nvim
export EDITOR=nvim

alias cp="cp -i"
alias rm="rm -i"
alias mv='mv -i'
alias gs='git status'
alias gb='git branch'
alias fd='fdfind'
alias proxy='proxychains4'
alias vi='nvim'
alias cm='chezmoi'

# https://github.com/trapd00r/LS_COLORS
. "/home/jack/.local/share/lscolors.sh"

# https://github.com/rupa/z
# --------------------------------------------------------------------
. ~/.z_jump/z.sh

# proxychains-ng
# --------------------------------------------------------------------
export PROXYCHAINS_CONF_FILE=~/.proxychains.conf

# starship
# --------------------------------------------------------------------
eval "$(starship init bash)"

