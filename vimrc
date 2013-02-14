filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set nocompatible

set modelines=0

syntax enable
set background=dark
colorscheme solarized

set cmdheight=1
set nohlsearch
set number

set list
set listchars=tab:▸\ ,eol:¬

set showcmd

set scrolloff=2

set ts=2 sts=2 sw=2 et
set nowrap

set smartindent
set nohlsearch
set directory-=.

set statusline=%F\ [%Y,%{&fileencoding},%{&ff}]%=%m%R\ %3p%%,\ %L\ стр.\ [%l:%v]
set laststatus=2

" Disable opening top buffer with help info
set completeopt=menu,longest

set visualbell t_vb=

set wildignore+=*.pyc,*.git,node_modules

if has("autocmd")
    autocmd BufNewFile,BufRead *.x set filetype=alex
    autocmd BufNewFile,BufRead *.y set filetype=happy
    autocmd BufNewFile,BufRead *.md set filetype=markdown
    autocmd BufNewFile,BufRead *.html set filetype=jinja.html
    autocmd BufNewFile,BufRead *.handlebars set filetype=html
    autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
    autocmd FileType go setlocal ts=4 sts=4 sw=4 noet nolist
    autocmd FileType python,snippet setlocal ts=4 sts=4 sw=4 et
    autocmd FileType python set ft=python.django
    if executable("enca")
        autocmd BufReadPre * call SetEncoding(expand('<afile>'))
    endif
endif

nmap <Space> za
nmap <F2> :set filetype=htmldjango<cr>

inoremap <C-CR> <Esc>o
inoremap <C-S-CR> <Esc>O

let g:netrw_list_hide='\.py[co]$,\.swp$'

let NERDTreeIgnore=['\.py[co]$', '\.swp$']
map <Leader>n :NERDTreeToggle<CR>

let python_no_builtin_highlight=1
let python_no_doctest_code_highlight=1
let python_no_doctest_highlight=1

let coffee_no_trailing_space_error=1

let g:ctrlp_show_hidden = 0
let g:ctrlp_working_path_mode = 0

let g:user_zen_settings = {
\   'indentation': '  ',
\   'lang': 'ru',
\   'charset': 'utf-8'
\}
