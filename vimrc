filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set nocompatible

set modelines=0

set list
set listchars=tab:▸\ ,eol:¬

set showcmd

set scrolloff=2

set ts=4 sts=4 sw=4 et

set smartindent

set nohlsearch
set directory-=.

set statusline=%F\ [%Y,%{&fileencoding},%{&ff}]%=%m%R\ %3p%%,\ %L\ стр.\ [%l:%v]
set laststatus=2

" Disable opening top buffer with help info
set completeopt=menu,longest

if executable("enca")
    autocmd BufReadPre * call SetEncoding(expand('<afile>'))
endif

nmap <Space> za
nmap <F2> :set filetype=htmldjango<cr>

let g:GetLatestVimScripts_allowautoinstall=1

set visualbell t_vb=

autocmd FileType html setlocal ts=2 sts=2 sw=2 noet
