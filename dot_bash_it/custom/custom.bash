#!/usr/bin/env bash

# cargo
export PATH=/home/jack/.cargo/bin:$PATH

# fzf
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

# proxy
# BASH_IT_HTTP_PROXY and BASH_IT_HTTPS_PROXY: Define the proxy URL to be used, e.g. 'http://localhost:1234'
# BASH_IT_NO_PROXY: A comma-separated list of proxy exclusions, e.g. '127.0.0.1,localhost'
export BASH_IT_HTTP_PROXY='http://127.0.0.1:7890'
export BASH_IT_HTTPS_PROXY='http://127.0.0.1:7890'
export BASH_IT_NO_PROXY='127.0.0.1,localhost'
