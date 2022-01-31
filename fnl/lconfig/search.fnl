(module lconfig.search
  {require {util lconfig.util}})

; Search incrementally and highlight matches
(set vim.opt.hlsearch true)
(set vim.opt.incsearch true)

; Reset highlight
(util.noremap :n "<C-L>" ":nohl<CR><C-L>")
