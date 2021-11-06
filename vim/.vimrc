"
" .vimrc
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
set softtabstop=-1
set smarttab

"
" keybindings
"

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

inoremap jj <ESC>
inoremap <ESC> <NOP>

vnoremap jj <ESC>
vnoremap <ESC> <NOP>

cnoremap jj <ESC>

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

filetype plugin on
filetype indent on

set number
set wildmenu

set lazyredraw " performance

set showmatch " bracket matching

set noerrorbells

