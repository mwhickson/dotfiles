"
" init.vim
"

"
" plugins
"
" https://github.com/mileszs/ack.vim
" https://github.com/dense-analysis/ale
" https://github.com/prabirshrestha/asyncomplete.vim
" https://github.com/ionide/FsAutoComplete
" https://github.com/ionide/Ionide-vim
" https://github.com/OmniSharp/Omnisharp-vim
" https://github.com/liuchengxu/vim-clap
"

"
" UTF-8
"

set encoding=utf8
set fileencoding=utf8
set ffs=unix,dos,mac

"
" tabs
"

set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=0
set smarttab
set autoindent

"
" keybindings
"

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"
" backup
"

set nobackup
set nowritebackup
set noswapfile

"
" additional
"

set nocompatible

syntax on

filetype plugin on
filetype indent on

set number
set wildmenu

set lazyredraw " performance

set ignorecase
set incsearch

set noerrorbells
set novisualbell

let g:ackprg='rg.exe --vimgrep --smart-case'
let g:ack_autoclose=1
let g:ack_use_cword_for_empty_search=1

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() : "\<cr>"

let g:OmniSharp_server_use_net6=1

"colorscheme slate
colorscheme habamax

