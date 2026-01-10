if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path ~/.local/bin
    fish_add_path ~/.local/custom_script

    # ======================================== env
    set -U fish_greeting
    set --export EDITOR nvim
    set --export SSH_AUTH_SOCK ~/.bitwarden-ssh-agent.sock

    # ======================================== programming language
    # golang
    if type -q go
        fish_add_path (go env GOPATH)/bin
        # https://proxy.golang.com.cn/zh/
        set --export GOPROXY https://goproxy.io,direct
        set --export GOPRIVATE git.mycompany.com,github.com/my/private
    end

    # ======================================== tool

    if type -q brew; or test -x /home/linuxbrew/.linuxbrew/bin/brew
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        set -x HOMEBREW_BREW_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn//git/homebrew/brew.git"
        set -x HOMEBREW_CORE_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn//git/homebrew/homebrew-core.git"
        set -x HOMEBREW_API_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn//homebrew-bottles/api"
        set -x HOMEBREW_BOTTLE_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn//homebrew-bottles"
    end

    # https://github.com/jdx/mise
    if type -q mise
        mise activate fish | source
    end

    # https://github.com/starship/starship
    if type -q starship
        starship init fish | source
    end

    # https://github.com/ajeetdsouza/zoxide
    if type -q zoxide
        zoxide init fish | source
    end

    # https://github.com/atuinsh/atuin
    if type -q atuin
        atuin init fish --disable-up-arrow | source
    end

    # https://github.com/sharkdp/vivid
    if type -q vivid
        set --export LS_COLORS "$(vivid generate gruvbox-light)"
    end

    # https://github.com/mzz2017/gg
    if type -q gg
        gg completion fish | source
    end

    # https://github.com/astral-sh/uv
    if type -q uv
        uv generate-shell-completion fish | source
        uvx --generate-shell-completion fish | source
    end

    # ======================================== alias
    abbr -a vi nvim

    abbr -a cp "cp -i"
    abbr -a rm "rm -i"
    abbr -a mv 'mv -i'

    abbr -a gs 'git status'
    abbr -a gp 'git push'
    abbr -a gu lazygit
    abbr -a dou lazydocker
    abbr -a cm chezmoi

    if type -q helix
        abbr --add hx helix
    end

    # https://github.com/eza-community/eza
    if type -q eza
        abbr -a l eza
        abbr -a ls eza
        abbr -a ll 'eza -l'
        abbr -a lll 'eza -la'
    else
        abbr -a l ls
        abbr -a ll 'ls -l'
        abbr -a lll 'ls -la'
    end

    if type -q broot
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
    if type -q trash
        function rm
            echo "This is not the command you are looking for."
            false
        end
    end

    # coding agent
    function ccx
        docker run -it --rm \
            --network host \
            -e HTTP_PROXY="http://127.0.0.1:7890" \
            -e HTTPS_PROXY="http://127.0.0.1:7890" \
            -v (pwd):/workspace \
            -v $HOME/.claude:/home/user/.claude \
            -v $HOME/.claude.json:/home/user/.claude.json \
            -v $HOME/.codex:/home/user/.codex \
            -v $HOME/.gitconfig:/home/user/.gitconfig \
            my-dev $argv
    end

    # ======================================== local config
    source ~/.config/fish/config_local.fish

end

# ======================================== plugins
# ❯ fisher list
# gazorby/fish-abbreviation-tips
# nickeb96/puffer-fish
# jorgebucaran/replay.fish
# patrickf1/fzf.fish
# jorgebucaran/autopair.fish
