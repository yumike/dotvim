-- Enable 24-bit RGB color in terminal
vim.opt.termguicolors = true

vim.cmd("syntax enable")
vim.opt.background = "dark"

vim.cmd("colorscheme onedark")
vim.g.onedark_terminal_italics = 1

vim.cmd("hi StatusLine guifg=#000000 guibg=#b9c0ca")
vim.cmd("hi StatusLineNC guifg=#000000 guibg=#59606a")

-- Highlight current line
vim.opt.cursorline = true
