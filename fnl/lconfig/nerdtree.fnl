(module lconfig.nerdtree
  {require {util lconfig.util}})

(set vim.g.NERDTreeIgnore [ "\\.py[co]$" "\\.swp$" ])
(util.noremap "" "<Leader>/" ":NERDTreeToggle<CR>")
