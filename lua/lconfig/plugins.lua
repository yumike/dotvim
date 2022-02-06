local packer = require("packer")

local function modfns(mod)
  return {
    setup = (mod.setup ~= nil),
    config = (mod.config ~= nil)
  }
end

local function use(...)
  local specs = {...}

  packer.startup(function(use)
    for _, spec in ipairs(specs) do
      if (type(spec) == "table" and spec.mod ~= nil) then
        local mod = require("lconfig.plugins." .. spec.mod)
        local fns = modfns(mod)

        if fns.setup then
          spec.setup = string.format("require(\"lconfig.plugins.%s\").setup()", spec.mod)
        end

        if fns.config then
          spec.config = string.format("require(\"lconfig.plugins.%s\").config()", spec.mod)
        end
      end

      use(spec)
    end
  end)
end

return use(
  "wbthomason/packer.nvim",
  "joshdick/onedark.vim",
  "leafgarland/typescript-vim",
  "peitalin/vim-jsx-typescript",
  "guns/vim-clojure-static",
  "Olical/conjure",
  {"nvim-telescope/telescope-fzf-native.nvim", run = "make"},
  {"nvim-telescope/telescope.nvim", mod = "telescope", requires = {
    {"nvim-lua/plenary.nvim"}
  }},
  "tpope/vim-fugitive",
  {"guns/vim-sexp", mod = "sexp"},
  "tpope/vim-sexp-mappings-for-regular-people",
  "tpope/vim-surround",
  {"scrooloose/nerdtree", mod = "nerdtree"},
  {"neoclide/coc.nvim", branch = "release"},
  {"iamcco/coc-diagnostic", run = "yarn install --frozen-lockfile && yarn build"},
  {"neovim/nvim-lspconfig", mod = "lspconfig"},
  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", mod = "treesitter"},
  "nvim-treesitter/nvim-treesitter-textobjects",
  "nvim-treesitter/playground"
)
