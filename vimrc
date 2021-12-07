filetype off
execute pathogen#infect()
filetype plugin indent on

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set rtp+=~/usr/local/opt/fzf

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Enable syntax highlighting and configure color scheme
syntax enable
set background=dark
colorscheme onedark
hi StatusLine   guifg=#000000 guibg=#b9c0ca
hi StatusLineNC guifg=#000000 guibg=#59606a


" Search incrementally and highlight matches
set hlsearch
set incsearch

" Show filler and split vertically by default in diff mode
set diffopt=filler,vertical

set signcolumn=yes
set cmdheight=1
set nofoldenable
set number

" set list
" set listchars=tab:▸\ ,eol:¬
set fillchars=diff:·

set showcmd

set scrolloff=2

set ts=2 sts=2 sw=2 et
set nowrap

set smartindent
set directory-=.

set statusline=%F\ [%Y]\ %{coc#status()}%=%m%R\ %3p%%\ [%l:%v/%L]
set laststatus=2

" Disable opening top buffer with help info
set completeopt=menu,longest

set wildignore+=*.pyc,*.git,*.o,*.hi,htmlcov,node_modules,tmp,target,*/vendor/bundle/*

if has("autocmd")
  augroup FileTypeCheck
    autocmd!
    autocmd BufNewFile,BufRead *.x set filetype=alex
    autocmd BufNewFile,BufRead *.y set filetype=happy
    " autocmd BufNewFile,BufRead *.md set filetype=mkd.
    autocmd BufNewFile,BufRead *.html set filetype=htmljinja.html
    autocmd BufNewFile,BufRead *.j2 set filetype=jinja
    autocmd BufNewFile,BufRead *.jinja set filetype=jinja
    autocmd BufNewFile,BufRead *.hbs set filetype=html
    autocmd BufNewFile,BufRead *.handlebars set filetype=html
    autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
    autocmd BufNewFile,BufRead Jenkinsfile set filetype=groovy
    autocmd BufNewFile,BufRead *.sql set filetype=pgsql
    autocmd BufNewFile,BufRead *.pyi set filetype=python
    autocmd BufNewFile,BufRead *.cassandra set filetype=cql
    autocmd BufNewFile,BufRead build.boot set filetype=clojure
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

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
map <Leader>/ :NERDTreeToggle<CR>

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

let g:haskell_indent_if = 2
let g:haskell_indent_case = 2
let g:haskell_indent_let = 2

let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_open_list = 1

let g:pymode_trim_whitespaces = 0
let g:pymode_options_max_line_length = 89
let g:pymode_lint = 0
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_goto_definition_cmd = 'e'

let g:jedi#popup_on_dot = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = 2

let g:multi_cursor_exit_from_insert_mode = 0

let g:clojure_fuzzy_indent_patterns = ["^go-loop$"]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:dbext_default_profile_psql = 'type=PGSQL:host=devmetrics.cian.tech:port=5432:dbname=devmetrics:user=devmetrics'
let g:dbext_default_profile = 'psql'

" Turn of search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Disable annoying autoindent for comments in Python
inoremap # X#

" Pytest
map <Leader>tm :Pytest method<CR>
map <Leader>tc :Pytest class<CR>
map <Leader>tf :Pytest file<CR>
map <Leader>ts :Pytest session<CR>

" Neomake
nmap <Leader>m :Neomake<CR>

" Dash
nmap <Leader>df :Dash <cword> flask<CR>
nmap <Leader>dw :Dash <cword> werkzeug<CR>
nmap <Leader>ds :Dash <cword> sqlalchemy<CR>
nmap <Leader>dg :Dash!<CR>

" Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
