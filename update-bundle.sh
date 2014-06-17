#!/usr/bin/env zsh

typeset -A plugins
plugins=(
  ack            https://github.com/mileszs/ack.vim.git
  alex           https://github.com/vim-scripts/alex.vim.git
  cabal          https://github.com/Twinside/vim-syntax-haskell-cabal.git
  coffee-script  https://github.com/kchmck/vim-coffee-script.git
  ctrlp          https://github.com/kien/ctrlp.vim.git
  dash           https://github.com/rizzatti/dash.vim.git
  dockerfile     https://github.com/honza/dockerfile.vim.git
  emmet          https://github.com/mattn/emmet-vim.git
  fugitive       https://github.com/tpope/vim-fugitive.git
  funcoo         https://github.com/rizzatti/funcoo.vim.git
  ghcmod         https://github.com/eagletmt/ghcmod-vim.git
  golang         https://github.com/jnwhiteh/vim-golang.git
  happy          https://github.com/vim-scripts/happy.vim.git
  hilinktrace    https://github.com/gerw/vim-HiLinkTrace.git
  html5          https://github.com/othree/html5.vim.git
  indentanything https://github.com/vim-scripts/IndentAnything.git
  indentpython   https://github.com/yumike/indentpython.vim.git
  iptables       https://github.com/vim-scripts/iptables.git
  javascript     https://github.com/pangloss/vim-javascript.git
  jinja          https://github.com/mitsuhiko/vim-jinja.git
  json           https://github.com/leshill/vim-json.git
  less           https://github.com/groenewege/vim-less.git
  markdown       https://github.com/plasticboy/vim-markdown.git
  nerdtree       https://github.com/scrooloose/nerdtree.git
  nginx          https://github.com/vim-scripts/nginx.vim.git
  pgsql          https://github.com/exu/pgsql.vim.git
  pytest         https://github.com/alfredodeza/pytest.vim.git
  ruby           https://github.com/vim-scripts/ruby.vim--IGREQUE.git
  rust           https://github.com/wting/rust.vim.git
  stylus         https://github.com/wavded/vim-stylus.git
  tabular        https://github.com/godlygeek/tabular.git
  vimerl         https://github.com/jimenezrick/vimerl.git
  vimproc        https://github.com/Shougo/vimproc.vim.git
)

for name in "${(@ko)plugins}"; do
  if [ -d "bundle/$name" ]; then
    echo "Updating bundle/$name"
    cd "bundle/$name"
    git clean -fd
    git pull
    cd ../..
  else
    echo "Installing bundle/$name"
    git clone "$plugins[$name]" "bundle/$name"
  fi
  echo ""
done
