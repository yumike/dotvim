vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Smart indent on new line
vim.opt.smartindent = true

-- Customize tabs and spaces settings for filetypes
vim.cmd("augroup FileTypeOptions")
vim.cmd("autocmd!")
vim.cmd("autocmd FileType go setlocal ts=4 sts=4 sw=4 noet nolist")
vim.cmd("autocmd FileType python,snippet setlocal ts=4 sts=4 sw=4 et")
vim.cmd("augroup END")
