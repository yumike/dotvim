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

set visualbell t_vb=

if has("autocmd")
    autocmd BufNewFile,BufRead *.html set filetype=htmldjango
    autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
    autocmd FileType coffee setlocal ts=2 sts=2 sw=2 et
    autocmd FileType htmldjango setlocal ts=2 sts=2 sw=2 noet
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 et
    autocmd FileType json setlocal ts=2 sts=2 sw=2 et
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
    autocmd FileType sh setlocal ts=2 sts=2 sw=2 et
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et
    if executable("enca")
        autocmd BufReadPre * call SetEncoding(expand('<afile>'))
    endif
endif

nmap <Space> za
nmap <F2> :set filetype=htmldjango<cr>

let g:netrw_list_hide='\.py[co]$,\.swp$'

let NERDTreeIgnore=['\.py[co]$', '\.swp$']
map <Leader>n :NERDTreeToggle<CR>

let coffee_no_trailing_space_error=1
