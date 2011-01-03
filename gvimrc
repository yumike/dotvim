set guifont=Menlo:h12
colorscheme wombat
set cmdheight=1
set nohlsearch
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set lines=55
set columns=140
set number
set linespace=2

set visualbell t_vb=

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

if filereadable(expand("~/.gvimrc.local"))
    source ~/.gvimrc.local
endif
