let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug proxy
" let g:plug_url_format='https://git::@hub.fastgit.org/%s.git'
" let g:plug_url_format='https://git::@hub.fastgit.xyz/%s.git'
" let g:plug_url_format='https://git::@github.com.cnpmjs.org/%s.git'
let plug_proxy = stdpath('config') . '/plug-proxy.vim'
if (filereadable(plug_proxy))
    exec 'source' plug_proxy
endif

" =============================================================================
"   PLUGINS
" =============================================================================
call plug#begin('~/.vim/plugged')

" Search
Plug 'nelstrom/vim-visual-star-search'                        " visual search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Movement
" Plug 'asvetliakov/vim-easymotion'     " vscode-neovim fork version
Plug 'phaazon/hop.nvim'
Plug 'takac/vim-hardtime'             " Disable arrow keys and similar
Plug 'andymass/vim-matchup'           " Highlight corresponding blocks e.g. if - fi in bash
Plug 'unblevable/quick-scope'         " An always-on highlight for a unique character in every word on a line to help you use f, F and family.

" Text Manipulation
Plug 'inkarkat/vim-ReplaceWithRegister'
Plug 'tpope/vim-unimpaired'                         " Pairs of mappings
Plug 'tpope/vim-repeat'                             " Adds repeat thorugh . to other packages
Plug 'tpope/vim-surround'                           " Surround with parentheses & co
Plug 'tomtom/tcomment_vim'                          " To comment stuff out
Plug 'tpope/vim-abolish'                            " easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tommcdo/vim-exchange'                         " Easy text exchange operator for Vim
Plug 'junegunn/vim-easy-align'                      " Easier alignment
Plug 'FooSoft/vim-argwrap'                          " convert lists of arguments into blocks of arguments
Plug 'vim-scripts/argtextobj.vim'                   " arguments object
Plug 'kana/vim-textobj-user'                        " create your own text objects without pain
Plug 'glts/vim-textobj-comment'                     " text object for comments
Plug 'kana/vim-textobj-entire'                      " Text objects for entire buffer
Plug 'kana/vim-textobj-line'                        " Text objects for the current line
Plug 'kana/vim-textobj-indent'                      " Text objects for indented blocks of lines
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multi cursor
Plug 'Raimondi/delimitMate'                         " Auto pair

" GUI enhancements
Plug 'machakann/vim-highlightedyank'  " Make the yanked region apparent!
Plug 'kyazdani42/nvim-web-devicons'   " A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
Plug 'itchyny/lightline.vim'          " Better Status Bar
Plug 'ap/vim-buftabline'              " A well-integrated, low-configuration buffer list that lives in the tabline
Plug 'mhinz/vim-startify'             " Better start screen
Plug 'simnalamburt/vim-mundo'         " Gundo fork
Plug 'liuchengxu/vista.vim'           " View and search LSP symbols, tags in Vim/NeoVim.
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'yuki-yano/fern-preview.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" A more adventurous wildmenu
if has('nvim')
  Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Autocomplete | Syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Make your Vim/Neovim as smart as VSCode.
Plug 'kevinoid/vim-jsonc' " Vim syntax highlighting plugin for JSON with C-style comments.
Plug 'rhysd/vim-grammarous' " grammar checker using *LanguageTool*.
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'honza/vim-snippets'

" Git
Plug 'tpope/vim-fugitive'             " Git interface
Plug 'rbong/vim-flog'                 " A lightweight and powerful git branch viewer that integrates with fugitive
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-rhubarb'              " If fugitive.vim is the Git, rhubarb.vim is the Hub
Plug 'rhysd/git-messenger.vim'        " Show the history of commits under the cursor
Plug 'junegunn/gv.vim'                " TIG like navigation for vim

" Colorschemes
" https://vimcolors.com/[~/.vim/colors]
Plug 'EdenEast/nightfox.nvim'
Plug 'Everblush/everblush.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'Mofiqul/vscode.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'crusoexia/vim-monokai'
Plug 'daschw/leaf.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'lifepillar/vim-gruvbox8'
Plug 'ghifarit53/tokyonight-vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'kvrohit/substrata.nvim'
Plug 'lifepillar/vim-solarized8'
Plug 'rafamadriz/neon'
Plug 'ray-x/aurora'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'savq/melange'
Plug 'shaunsingh/nord.nvim'
Plug 'shaunsingh/solarized.nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tanvirtin/monokai.nvim'
Plug 'titanzero/zephyrium'

" Other
Plug 'rlue/vim-barbaric'               " Improve Vim/Neovim experience with input methods
Plug 'tpope/vim-eunuch'                " Vim sugar for the UNIX shell commands
Plug 'folke/which-key.nvim'            " show keybindings in popup
" Plug 'ludovicchabant/vim-gutentags'	   " manage tag files
Plug 'ellisonleao/glow.nvim'           " A glow preview directly in your neovim buffer
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}	" markdown preview
Plug 't9md/vim-choosewin'              " Navigate to the window you choose
Plug 'luochen1990/rainbow'             " Rainbow Parentheses Improved
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ntpeters/vim-better-whitespace'  " Highlight trailing whitespace characters
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'dansomething/vim-hackernews'     " Browse Hacker News inside Vim
Plug 'voldikss/vim-translator'         " Asynchronous translating plugin for Vim/Neovim
Plug 'Olical/conjure'                  " Conjure is an interactive environment for evaluating code within your running program
Plug 'alker0/chezmoi.vim'              " Chezmoi
Plug 'editorconfig/editorconfig-vim'   " EditorConfig plugin for Vim
Plug 'jeffkreeftmeijer/vim-numbertoggle' " Toggles between hybrid and absolute line numbers automatically
Plug 'ActivityWatch/aw-watcher-vim'
Plug 'tridactyl/vim-tridactyl'         " VIM syntax plugin for Tridactyl configuration files
call plug#end()

" =============================================================================
"   BASIC
" =============================================================================

" GUI
if has("win32")
    set guifont=FiraCode\ Nerd\ Font\ Mono:h12
    set guifontwide=Microsoft\ YaHei:h12.5
elseif has("linux")
    set guifont=FiraCode\ Nerd\ Font\ Mono:h12
    " TODO
end

" Color
if has("termguicolors")
    " fix bug for vim
    " set t_8f=^[[38;2;%lu;%lu;%lum
    " set t_8b=^[[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
endif
" To quickly toggle between them, use vim-unimpaired's keymap yob
" set background=light
set background=dark
lua << EOF
random_color = {
    'monokai_pro',
    'monokai',
    'melange',
    'leaf',
    'kanagawa-wave',
    'kanagawa-dragon',
    'kanagawa',
    'iceberg',
    'habamax',
    'gruvbox8_soft',
    'everforest',
    'everblush',
    'duskfox',
    'dracula',
    'desert',
    'dawnfox',
    'carbonfox',
    'aurora',
    'PaperColor',
    'zephyrium',
    'tokyonight',
    'terafox',
    'substrata',
    'sonokai',
    'solarized8_low',
    'solarized8_high',
    'solarized8_flat',
    'solarized8',
    'solarized',
    'seoul256-light',
    'seoul256',
}
math.randomseed(os.time())
local mycolor = random_color[math.random(#random_color)]
vim.cmd('colorscheme ' .. mycolor)
EOF

" === Cursor ===
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
" else
"     let &t_SI = "\e[5 q"
"     let &t_EI = "\e[2 q"
" endif
if exists('$TMUX')
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[6 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
else
    let &t_SI .= "\<Esc>[6 q"
    let &t_EI .= "\<Esc>[2 q"
endif

" === Undo ===
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
	call mkdir($HOME."/.vim/undodir", "", 0700)
endif
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" === Search ===
set ignorecase
set smartcase
set hlsearch
set incsearch

" === Indentation ===
set autoindent
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

filetype plugin indent on
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType xml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" === Tab ===
" indicate tabs
set list listchars=tab:>·,trail:·,extends:»,precedes:«,nbsp:×

" === Miscellaneous ===
set nocompatible
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=
set hidden
set showcmd
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
set wildmenu
set wildmode=full
set history=200
syntax on
set shortmess+=I
set number
set relativenumber
set mouse+=a
if has("win32")
    source $VIMRUNTIME/mswin.vim
end
set clipboard=unnamed
set splitbelow
set splitright
set timeoutlen=500

let mapleader=","       " leader is ,
noremap \ ,             " swap , and \
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" change the directory only for the current window
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
map <C-a> <Nop>
map <C-x> <Nop>

nnoremap <C-q> <C-v>

" Completion popup menu
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Moving lines
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv

" Remap $ and ^ 
nnoremap H ^
nnoremap L $

" Readline-style key bindings in command-line (excerpt from rsi.vim)
cnoremap        <C-A> <Home>
cnoremap        <C-B> <Left>
cnoremap <expr> <C-D> getcmdpos()>strlen(getcmdline())?"\<Lt>C-D>":"\<Lt>Del>"
cnoremap <expr> <C-F> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"
cnoremap        <M-b> <S-Left>
cnoremap        <M-f> <S-Right>
silent! exe "set <S-Left>=\<Esc>b"
silent! exe "set <S-Right>=\<Esc>f"

" =============================================================================
"   LEADER
" =============================================================================
nmap <Leader>tl :set invlist<CR>
nmap <Leader>cw <Plug>(choosewin)
nnoremap <Leader>u :MundoToggle<CR>
nnoremap <Leader>st :Vista!!<CR> " Toggle(s means show) vista view window
nmap <Leader>gm <Plug>(git-messenger)
" Find files using Telescope command-line sugar.
nnoremap <C-p> :Telescope<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" aw    -- ArgWrap
nnoremap <Leader>aw :ArgWrap<CR>

" easy-align
xmap <Leader>al <Plug>(EasyAlign)
nmap <Leader>al <Plug>(EasyAlign)

" vim-ReplaceWithRegister
nmap <Leader>p  <Plug>ReplaceWithRegisterOperator
nmap <Leader>pp <Plug>ReplaceWithRegisterLine
xmap <Leader>p  <Plug>ReplaceWithRegisterVisual

" =============================================================================
"   PLUGIN CONFIG
" =============================================================================

" EditorConfig
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Telescope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require('telescope').setup{
  defaults = {
    layout_strategy = 'flex',
    scroll_strategy = 'cycle',
  }
}
EOF

" fern.vim
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

" fern-renderer-nerdfont.vim
let g:fern#renderer = "nerdfont"

" gitsigns.nvim
lua << EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },

  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
        opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
    map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

    -- Actions
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>')
    map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
    map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
    map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
    map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
    map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
    map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
    map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
    map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

    -- Text object
    map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
EOF

" QuickScope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" better-whitespace
nnoremap <Leader>t<space> :ToggleWhitespace<CR>

" quick-scope
nnoremap <Leader>tq :QuickScopeToggle<CR>

" fugitive
nnoremap <Leader>gs :G<CR>
nnoremap <Leader>gf :diffget //2<CR>
nnoremap <Leader>gj :diffget //3<CR>

" rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 0 " set to 0 if you want to enable it later via :RainbowToggle

" markdown-preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:mkdp_open_to_the_world = 1
" let g:mkdp_open_ip = '127.0.0.1'
" let g:mkdp_port = 9080
" function! g:Open_browser(url)
"     silent exe '!lemonade open 'a:url
" endfunction
" let g:mkdp_browserfunc = 'g:Open_browser'

" vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType c,cpp,java setlocal commentstring=//\ %s

" gutentags (borrow from [http://www.skywind.me/blog/archives/2084])
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
" let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
" if !isdirectory(s:vim_tags)
   " silent! call mkdir(s:vim_tags, 'p')
" endif

" Vista
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --INSERT-- is unncessary because of lightline
set noshowmode

" vista vim-buffet
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'enable': {
      \   'tabline': 0
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }

" hop.nvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require'hop'.setup()
vim.api.nvim_set_keymap('', '<space>w', "<cmd>HopWordAC<cr>", {})
vim.api.nvim_set_keymap('', '<space>b', "<cmd>HopWordBC<cr>", {})
vim.api.nvim_set_keymap('', '<space>j', "<cmd>HopLineAC<cr>", {})
vim.api.nvim_set_keymap('', '<space>k', "<cmd>HopLineBC<cr>", {})
vim.api.nvim_set_keymap('', '<space>l', "<cmd>HopChar2AC<cr>", {})
vim.api.nvim_set_keymap('', '<space>h', "<cmd>HopChar2BC<cr>", {})
vim.api.nvim_set_keymap('', '<space>?', "<cmd>HopPatternAC<cr>", {})
vim.api.nvim_set_keymap('', '<space>/', "<cmd>HopPatternBC<cr>", {})
EOF

" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Example lua configuration
" NOTE: This works in Neovim 0.7.0dev+ only.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
-- Some servers have issues with backup files, see #649.
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set
-- Auto complete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: There's always complete item selected by default, you may want to enable
-- no select by `"suggest.noselect": true` in your configuration file.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice.
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion.
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation.
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})


-- Use K to show documentation in preview window.
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})


-- Highlight the symbol and its references when holding the cursor.
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})


-- Symbol renaming.
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- Formatting selected code.
keyset("x", "<leader>rf", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>rf", "<Plug>(coc-format-selected)", {silent = true})


-- Setup formatexpr specified filetype(s).
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder.
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})


-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for applying codeAction to the current buffer.
keyset("n", "<leader>ac", "<Plug>(coc-codeaction)", opts)


-- Apply AutoFix to problem on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)


-- Run the Code Lens action on the current line.
keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)


-- Remap <C-f> and <C-b> for scroll float windows/popups.
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
keyset("i", "<C-f>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-b>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)


-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support of language server.
keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})


-- Add `:Format` command to format current buffer.
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer.
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer.
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support.
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline.
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
-- local opts = {silent = true, nowait = true}
-- Show all diagnostics.
-- keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions.
-- keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
-- Show commands.
-- keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document.
-- keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
-- Search workspace symbols.
-- keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item.
-- keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item.
-- keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
-- Resume latest coc list.
-- keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
EOF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My custom coc settings
let g:coc_disable_transparent_cursor = 1 " https://github.com/neoclide/coc.nvim/issues/1775#issuecomment-757764053
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

let g:coc_global_extensions = [
            \ 'coc-yaml',
            \ 'coc-java',
            \ 'coc-prettier',
            \ 'coc-eslint',
            \ 'coc-tsserver',
            \ 'coc-snippets',
            \ 'coc-json',
            \ 'coc-sql',
            \ 'coc-xml',
            \ 'coc-vimlsp',
            \ 'coc-lists',
            \ 'coc-powershell',
            \ 'coc-sh',
            \ 'coc-explorer',
            \ 'coc-marketplace',
            \ 'coc-clangd',
            \ 'coc-pyright',
            \ 'coc-texlab',
            \ 'coc-spell-checker',
            \ 'coc-diagnostic',
            \ 'coc-conjure',
            \ ]


" wilder.nvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>tw :call wilder#toggle()<CR>
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ })

call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({
      \       'fuzzy': 1,
      \       'set_pcre2_pattern': has('nvim'),
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': 'fuzzy',
      \     }),
      \   ),
      \ ])

let s:highlighters = [
        \ wilder#pcre2_highlighter(),
        \ wilder#basic_highlighter(),
        \ ]

call wilder#set_option('renderer', wilder#renderer_mux({
      \ ':': wilder#popupmenu_renderer({
      \   'highlighter': s:highlighters,
      \ }),
      \ '/': wilder#wildmenu_renderer({
      \   'highlighter': s:highlighters,
      \ }),
      \ }))

" firenvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('g:started_by_firenvim')
    set laststatus=0
    if has("win32")
        set guifont=FiraCode\ Nerd\ Font:h24
        set guifontwide=Microsoft\ YaHei:h24
    elseif has("linux")
        set guifont=FiraCode\ Nerd\ Font\ Mono:h24
        " TODO
end
endif
augroup nvim_firenvim_autocommands
    au BufEnter github.com_*.txt set filetype=markdown
augroup END
let g:firenvim_config = {
    \ 'globalSettings': {
        \ '<C-w>': 'noop',
        \ '<C-n>': 'noop',
        \ '<C-p>': 'noop',
    \ },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }
let fc = g:firenvim_config['localSettings']

" conjure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
local g = vim.g

g["conjure#mapping#prefix"] = "<leader>"

-- Breifly highlight evaluated forms
g["conjure#highlight#enabled"] = true

-- Only enable for clojure (so far anyway)
g["conjure#filetypes"] = { "clojure", "scheme" }



-- >> Document Mappings

local wk = require("which-key")

-- Base Conjure Mappings
wk.register({
    l = {
        name = "log",
        s = "Open in new horizontal split window",
        v = "Open in new vertical split window",
        t = "Open in new tab",
        q = "Close all visibal windows in current tab",
        r = "Soft reset",
        R = "Hard reset",
    },
    E = "Evaluate given motion",
    e = {
        name = "eval",
        e = "Form under the cursor",
        r = "Root form under the cursor",
        w = "Word under the cursor",
        c = {
            name = "display as comment",
            e = "Form under the cursor",
            r = "Root form under the cursor",
            w = "Word under the cursor",
        },
        ["!"] = "Replacing the Form under the cursor",
        m = "Form at the given mark",
        f = "File from disk",
        b = "Current buffer",
    },
    g = {
        name = "goto",
        d = "Definition",
    },
}, { prefix = "<leader>", })

wk.register({
    E = "Evaluate selection",
}, { prefix = "<leader>", mode = 'v' })

-- Clojure Nrepl Client Mappings
wk.register({
    c = {
        name = "connection",
        d = "Disconnect current",
        f = "Connect",
    },
    ei = "Interrupt oldest",
    v = {
        name = "view",
        e = "Last exception",
        ["1"] = "Most recent evaluation",
        ["2"] = "2nd most recent evaluation",
        ["3"] = "3rd most recent evaluation",
        s = "Source of symbol under cursor",
    },
    s = {
        name = "session",
        c = "Clone",
        f = "Create fresh",
        q = "Close current",
        Q = "Close all",
        l = "List",
        n = "Next",
        p = "Previous",
        s = "Prompt to select",
    },
    t = {
        name = "test",
        a = "Run all loaded tests",
        n = "Run tests in namespace",
        N = "Run tests in testing namespace",
        c = "Run under cursor",
    },
    r = {
        name = "refresh",
        r = "Changed namespaces",
        a = "All, even unchanged",
        c = "Clear refresh cache",
    },
}, { prefix = "<leader>", })
EOF

