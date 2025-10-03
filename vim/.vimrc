" .vimrc

" UTF-8

set encoding=utf8
set fileencoding=utf8
set ffs=unix,dos,mac

" tabs

set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=0
set smarttab
set autoindent

" keybindings

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" backup

set nobackup
set nowritebackup
set noswapfile

" additional

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

"colorscheme slate

