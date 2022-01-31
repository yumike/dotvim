(module lconfig.base)

; Always show column with signs
(set vim.opt.signcolumn "yes")

; Always open all folds by default
(set vim.opt.foldenable false)

; Show line numbers
(set vim.opt.number true)

; Always keep some lines visible above and below cursor
(set vim.opt.scrolloff 2)

; Don't wrap long lines
(set vim.opt.wrap false)

; Show filler and split vertically by default in diff mode
(set vim.opt.diffopt [ "filler" "vertical" ])

; Fill for deleted lines in diff
(set vim.opt.fillchars {"diff" "·"})

; Show command in command-line
(set vim.opt.showcmd true)

; Set minimal command-line height
(set vim.opt.cmdheight 1)

; Status line
(set vim.opt.statusline "%F [%Y] %{coc#status()}%=%m%R %3p%% [%l:%v/%L]")
(set vim.opt.laststatus 2)

; Disable opening top buffer with help info
(set vim.opt.completeopt [ "menu" "longest" ])

; Ignore some patterns when expanding wildcards
(set vim.opt.wildignore [ "*.pyc"
                          "*.git"
                          "*.o"
                          "*.hi"
                          "htmlcov"
                          "node_modules"
                          "tmp"
                          "target"
                          "*/vendor/bundle/*" ])

; Define leader keys
(set vim.g.mapleader "\\")
(set vim.g.maplocalleader ",")
