-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/yumike/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/yumike/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/yumike/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/yumike/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/yumike/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["coc-diagnostic"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/coc-diagnostic",
    url = "https://github.com/iamcco/coc-diagnostic"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  conjure = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/conjure",
    url = "https://github.com/Olical/conjure"
  },
  nerdtree = {
    loaded = true,
    needs_bufread = false,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/opt/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("lconfig.plugins.lspconfig").config()' },
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { 'require("lconfig.plugins.treesitter").config()' },
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("lconfig.plugins.telescope").config()' },
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ["vim-clojure-static"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/vim-clojure-static",
    url = "https://github.com/guns/vim-clojure-static"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript",
    url = "https://github.com/peitalin/vim-jsx-typescript"
  },
  ["vim-sexp"] = {
    loaded = true,
    needs_bufread = false,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/opt/vim-sexp",
    url = "https://github.com/guns/vim-sexp"
  },
  ["vim-sexp-mappings-for-regular-people"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/vim-sexp-mappings-for-regular-people",
    url = "https://github.com/tpope/vim-sexp-mappings-for-regular-people"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/yumike/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: nerdtree
time([[Setup for nerdtree]], true)
require("lconfig.plugins.nerdtree").setup()
time([[Setup for nerdtree]], false)
time([[packadd for nerdtree]], true)
vim.cmd [[packadd nerdtree]]
time([[packadd for nerdtree]], false)
-- Setup for: vim-sexp
time([[Setup for vim-sexp]], true)
require("lconfig.plugins.sexp").setup()
time([[Setup for vim-sexp]], false)
time([[packadd for vim-sexp]], true)
vim.cmd [[packadd vim-sexp]]
time([[packadd for vim-sexp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("lconfig.plugins.treesitter").config()
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("lconfig.plugins.lspconfig").config()
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("lconfig.plugins.telescope").config()
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
