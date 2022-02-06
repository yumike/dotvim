local util = require("lconfig.util")

-- Search incrementally and highlight matches
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Reset highlight
util.noremap("n", "<C-L>", ":nohl<CR><C-L>")
