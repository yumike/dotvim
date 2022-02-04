(module lconfig.plugins.nerdtree
  {require {util lconfig.util}})

(defn setup []
  (set vim.g.NERDTreeIgnore [ "\\.py[co]$" "\\.swp$" ])
  (set vim.g.NERDTreeStatusline -1)
  (util.noremap "" "<Leader>/" ":NERDTreeToggle<CR>"))
