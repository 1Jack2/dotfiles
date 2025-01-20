if status is-interactive
    # Commands to run in interactive sessions can go here

    # ======================================== env
    set -U fish_greeting
    set --export EDITOR nvim

    # ======================================== programming language
    # golang
    if command -v go > /dev/null
        fish_add_path (go env GOPATH)/bin
        # https://proxy.golang.com.cn/zh/
        set --export GOPROXY https://goproxy.io,direct
        set --export GOPRIVATE git.mycompany.com,github.com/my/private
    end

    # ======================================== tool

    # https://github.com/jdx/mise
    if command -v mise > /dev/null
        mise activate fish | source
    end

    # https://github.com/starship/starship
    if command -v starship > /dev/null
        starship init fish | source
    end

    # https://github.com/ajeetdsouza/zoxide
    if command -v zoxide > /dev/null
        zoxide init fish | source
    end

    # https://github.com/atuinsh/atuin
    if command -v atuin > /dev/null
        atuin init fish --disable-up-arrow | source
    end

    # https://github.com/sharkdp/vivid
    if command -v vivid > /dev/null
        set --export LS_COLORS "$(vivid generate gruvbox-light)"
    end

    # https://github.com/mzz2017/gg
    if command -v gg > /dev/null
        gg completion fish | source
    end

    # ======================================== alias
    abbr -a vi 'nvim'

    abbr -a cp "cp -i"
    abbr -a rm "rm -i"
    abbr -a mv 'mv -i'

    abbr -a gs 'git status'
    abbr -a gp 'git push'
    abbr -a gu 'gitui'
    abbr -a cm 'chezmoi'

    # https://github.com/eza-community/eza
    if command -v eza > /dev/null
        abbr -a l 'eza'
        abbr -a ls 'eza'
        abbr -a ll 'eza -l'
        abbr -a lll 'eza -la'
    else
        abbr -a l 'ls'
        abbr -a ll 'ls -l'
        abbr -a lll 'ls -la'
    end

    if command -v broot > /dev/null
        abbr -a l 'br -sdp'
    end

    # ======================================== function
    function enable-proxy
        set -gx https_proxy 'http://localhost:7890'
        set -gx http_proxy 'http://localhost:7890'
        set -gx HTTPS_PROXY 'http://localhost:7890'
        set -gx HTTP_PROXY 'http://localhost:7890'
        echo proxy on $https_proxy
    end

    function disable-proxy
        set -e https_proxy
        set -e http_proxy
        set -e HTTPS_PROXY
        set -e HTTP_PROXY
        echo proxy off
    end

    # ctrl+w
    # https://github.com/fish-shell/fish-shell/issues/3730#issuecomment-317011272
    function fish_user_key_bindings
        bind \cw backward-kill-word
    end

    # use command to bypass the alias
    # https://github.com/fish-shell/fish-shell/issues/9136#issuecomment-1216988800
    if command -v trash > /dev/null
        function rm
            echo "This is not the command you are looking for."
            false
        end
    end

end

# ======================================== plugins
# ❯ fisher list
# gazorby/fish-abbreviation-tips
# nickeb96/puffer-fish
# jorgebucaran/replay.fish
# patrickf1/fzf.fish
# jorgebucaran/autopair.fish

