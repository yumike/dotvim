return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim" }
  use { "joshdick/onedark.vim" }
  use { "EdenEast/nightfox.nvim" }
  use { "leafgarland/typescript-vim" }
  use { "peitalin/vim-jsx-typescript" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use { "nvim-telescope/telescope.nvim", requires = {
    { "nvim-lua/plenary.nvim" }
  }}
  use { "tpope/vim-fugitive" }
  use { "lewis6991/gitsigns.nvim" }
  use { "tpope/vim-surround" }
  use { "nvim-tree/nvim-tree.lua" }
  use { "rest-nvim/rest.nvim", requires = {
    { "nvim-lua/plenary.nvim" }
  }}

  -- Clojure
  use { "Olical/conjure" }
  use { "clojure-vim/clojure.vim" }
  use { "guns/vim-sexp" }
  use { "tpope/vim-sexp-mappings-for-regular-people" }

  -- LSP
  use { "neovim/nvim-lspconfig" }
  use { "folke/neodev.nvim" }

  -- Completion
  use { "L3MON4D3/LuaSnip" }
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "saadparwaiz1/cmp_luasnip" }

  -- Debug
  use { "mfussenegger/nvim-dap" }
  use { "mfussenegger/nvim-dap-python" }

  -- Databases
  use { 'tpope/vim-dadbod' }
  use { 'kristijanhusak/vim-dadbod-ui' }
  use { "lifepillar/pgsql.vim" }

  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "nvim-treesitter/nvim-treesitter-textobjects" }
  use { "nvim-treesitter/playground" }
end)
