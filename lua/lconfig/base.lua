-- Always show column with signs
vim.opt.signcolumn = "yes"

-- Always open all folds by default
vim.opt.foldenable = false

-- Show line numbers
vim.opt.number = true

-- Always keep some lines visible above and below cursor
vim.opt.scrolloff = 2

-- Don't wrap long lines
vim.opt.wrap = false

vim.opt.conceallevel = 2

-- Show filler and split vertically by default in diff mode
vim.opt.diffopt = {"filler", "vertical"}

-- Fill for deleted lines in diff
vim.opt.fillchars = {diff = "·"}

-- Show command in command-line
vim.opt.showcmd = true

-- Set minimal command-line height
vim.opt.cmdheight = 0

-- Status line
vim.opt.statusline = "%F [%Y] [%{get(b:,'gitsigns_head','')}]%=%m%R %3p%% [%l:%v/%L]"
vim.opt.laststatus = 2

-- Disable opening top buffer with help info
vim.opt.completeopt = {"menu", "menuone", "noselect"}

-- Ignore some patterns when expanding wildcards
vim.opt.wildignore = {
  "*.pyc",
  "*.git",
  "*.o",
  "*.hi",
  "htmlcov",
  "node_modules",
  "tmp",
  "target",
  "*/vendor/bundle/*"
}

-- Define leader keys
vim.g.mapleader = "\\"
vim.g.maplocalleader = ","
