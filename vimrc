filetype off
execute pathogen#infect()
filetype plugin indent on

" Disable compatibility with vi
set nocompatible

" Enable syntax highlighting and configure color scheme
syntax enable
set background=dark
colorscheme jellybeans

" Search incrementally and highlight matches
set hlsearch
set incsearch

" Show filler and split vertically by default in diff mode
set diffopt=filler,vertical

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

set wildignore+=*.pyc,*.git,*.o,*.hi,htmlcov,node_modules,tmp,target,*/vendor/bundle/*

if has("autocmd")
  augroup FileTypeCheck
    autocmd!
    autocmd BufNewFile,BufRead *.x set filetype=alex
    autocmd BufNewFile,BufRead *.y set filetype=happy
    autocmd BufNewFile,BufRead *.md set filetype=mkd
    autocmd BufNewFile,BufRead *.html set filetype=htmljinja.html
    autocmd BufNewFile,BufRead *.j2 set filetype=jinja
    autocmd BufNewFile,BufRead *.jinja set filetype=jinja
    autocmd BufNewFile,BufRead *.hbs set filetype=html
    autocmd BufNewFile,BufRead *.handlebars set filetype=html
    autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
    autocmd BufNewFile,BufRead *.sql set filetype=pgsql

  augroup FileTypeOptions
    autocmd!
    autocmd FileType go setlocal ts=4 sts=4 sw=4 noet nolist
    autocmd FileType python,snippet setlocal ts=4 sts=4 sw=4 et
  augroup END
endif

nmap <F2> :set filetype=htmldjango<cr>

let mapleader = "\\"
let maplocalleader = ","

let g:netrw_list_hide='\.py[co]$,\.swp$'

let NERDTreeIgnore=['\.py[co]$', '\.swp$']
map <Leader>n :NERDTreeToggle<CR>

" Disable folding markdown sections
let g:vim_markdown_folding_disabled=1

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

let g:pymode_trim_whitespaces = 0
let g:pymode_options_max_line_length = 79
let g:pymode_lint = 0
let g:pymode_rope_complete_on_dot = 0

" Turn of search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Disable annoying autoindent for comments in Python
inoremap # X#

" Pytest
map <Leader>tm :Pytest method<CR>
map <Leader>tc :Pytest class<CR>
map <Leader>tf :Pytest file<CR>
map <Leader>ts :Pytest session<CR>

" Dash
nmap <Leader>df :Dash <cword> flask<CR>
nmap <Leader>dw :Dash <cword> werkzeug<CR>
nmap <Leader>ds :Dash <cword> sqlalchemy<CR>
nmap <Leader>dg :Dash!<CR>
