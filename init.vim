call plug#begin()
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'dart-lang/dart-vim-plugin'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'iamcco/coc-diagnostic', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'Olical/conjure'
Plug 'Olical/aniseed'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
call plug#end()

let g:aniseed#env = v:true
