return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "joshdick/onedark.vim"
  use "EdenEast/nightfox.nvim"
  use "leafgarland/typescript-vim"
  use "peitalin/vim-jsx-typescript"
  use "guns/vim-clojure-static"
  use "Olical/conjure"
  use "lifepillar/pgsql.vim"
  use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
  use {"nvim-telescope/telescope.nvim", requires = {
    {"nvim-lua/plenary.nvim"}
  }}
  use "tpope/vim-fugitive"
  use {"guns/vim-sexp"}
  use "tpope/vim-sexp-mappings-for-regular-people"
  use "tpope/vim-surround"
  use {"scrooloose/nerdtree"}

  use "neovim/nvim-lspconfig"

  -- Completion
  use "L3MON4D3/LuaSnip"
  use {"hrsh7th/nvim-cmp"}
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"
  use "saadparwaiz1/cmp_luasnip"

  use { 'tpope/vim-dadbod' }
  use { 'kristijanhusak/vim-dadbod-ui' }

  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use "nvim-treesitter/playground"
end)
