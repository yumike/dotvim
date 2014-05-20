filetype off
execute pathogen#infect()
filetype plugin indent on

set nocompatible

syntax enable
set background=dark
colorscheme jellybeans

" Search incrementally and highlight matches
set hlsearch
set incsearch

set cmdheight=1
set nofoldenable
set number

set list
set listchars=tab:▸\ ,eol:¬
set fillchars=diff:·

set showcmd

set scrolloff=2

set ts=2 sts=2 sw=2 et
set nowrap

set smartindent
set directory-=.

set statusline=%F\ [%Y,%{&fileencoding},%{&ff}]%=%m%R\ %3p%%,\ %L\ стр.\ [%l:%v]
set laststatus=2

" Disable opening top buffer with help info
set completeopt=menu,longest

set visualbell t_vb=

set wildignore+=*.pyc,*.git,htmlcov,node_modules,tmp,*/vendor/bundle/*

if has("autocmd")
    autocmd BufNewFile,BufRead *.x set filetype=alex
    autocmd BufNewFile,BufRead *.y set filetype=happy
    autocmd BufNewFile,BufRead *.md set filetype=mkd
    autocmd BufNewFile,BufRead *.html set filetype=htmljinja.html
    autocmd BufNewFile,BufRead *.j2 set filetype=jinja
    autocmd BufNewFile,BufRead *.jinja set filetype=jinja
    autocmd BufNewFile,BufRead *.hbs set filetype=html
    autocmd BufNewFile,BufRead *.handlebars set filetype=html
    autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
    autocmd FileType go setlocal ts=4 sts=4 sw=4 noet nolist
    autocmd FileType python,snippet,erlang setlocal ts=4 sts=4 sw=4 et
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
let g:ctrlp_open_new_file = 'r'

let g:is_posix = 1
let g:sh_no_error = 1
let g:is_bash = 1

" Turn of search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

let g:user_zen_settings = {
\   'indentation': '  ',
\   'lang': 'ru',
\   'charset': 'utf-8'
\}

let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'

" Pytest
map <Leader>tm :Pytest method<CR>
map <Leader>tc :Pytest class<CR>
map <Leader>tf :Pytest file<CR>
map <Leader>ts :Pytest session<CR>

" Dash
nmap <Leader>df :Dash <cword> flask<CR>
nmap <Leader>dw :Dash <cword> werkzeug<CR>
nmap <Leader>ds :Dash <cword> sqlalchemy<CR>
nmap <Leader>dh :Dash <cword> haskell<CR>
nmap <Leader>dg :Dash!<CR>
