"
" .vimrc
"

"
" plugins
"
" - https://github.com/prabirshrestha/vim-lsp
" - https://github.com/prabirshrestha/asyncomplete.vim 
" - https://github.com/prabirshrestha/asyncomplete-lsp.vim
" - https://github.com/mattn/vim-lsp-settings
" 
" - https://github.com/tpope/vim-fugitive
" - https://github.com/junegunn/gv.vim
" - https://github.com/airblade/vim-gitgutter
"
" - https://github.com/mg979/vim-visual-multi/
"
" - https://github.com/mileszs/ack.vim + ripgrep
"
" - https://github.com/vim-airline/vim-airline
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

"let g:ackprg='c:\\ripgrep\\rg.exe --vimgrep --smart-case'
"let g:ack_autoclose=1
"let g:ack_use_cword_for_empty_search=1

" https://frostyx.cz/posts/lsp-for-vim-boomers

"let g:lsp_diagnostics_enabled = 0
"let g:lsp_use_native_client = 1
"
"if executable('gopls')
"	au User lsp_setup call lsp#register_server({
"		\ 'name': 'gopls',
"		\ 'cmd': {server_info->['gopls']},
"		\ 'allowlist': ['go'],
"		\})
"endif
"
"function! s:on_lsp_buffer_enabled() abort
"	setlocal omnifunc=lsp#complete
"	nmap <buffer> gd <plug>(lsp-definition)
"	nmap <buffer> gr <plug>(lsp-references)
"	nmap <buffer> K <plug>(lsp-hover)
"endfunction
"
"augroup lsp_install
"	au!
"	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"augroup END

"colorscheme slate

