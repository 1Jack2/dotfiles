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
exec 'source' plug_proxy

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
Plug 'michaeljsmith/vim-indent-object'              " indent object
Plug 'kana/vim-textobj-user'                        " create your own text objects without pain
Plug 'glts/vim-textobj-comment'                     " text object for comments
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
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'junegunn/seoul256.vim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'crusoexia/vim-monokai'
Plug 'lifepillar/vim-solarized8'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'

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
" colorscheme PaperColor
set background=dark
colorscheme gruvbox

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

" Buffer switch
nnoremap <C-L> :bnext<CR>
nnoremap <C-H> :bprev<CR>

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

" Telescope
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
let g:coc_disable_transparent_cursor = 1 " https://github.com/neoclide/coc.nvim/issues/1775#issuecomment-757764053

let g:coc_global_extensions = [
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
            \ 'coc-snippets',
            \ 'coc-texlab',
            \ 'coc-spell-checker',
            \ 'coc-diagnostic',
            \ 'coc-conjure',
            \ ]

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>rf  <Plug>(coc-format-selected)
nmap <leader>rf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

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

