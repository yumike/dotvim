(module lconfig.colors)

; Enable 24-bit RGB color in terminal
(set vim.opt.termguicolors true)

(vim.cmd "syntax enable")
(set vim.opt.background "dark")

(vim.cmd "colorscheme onedark")
(set vim.g.onedark_terminal_italics 1)

(vim.cmd "hi StatusLine guifg=#000000 guibg=#b9c0ca")
(vim.cmd "hi StatusLineNC guifg=#000000 guibg=#59606a")

; Highlight current line
(set vim.opt.cursorline true)
