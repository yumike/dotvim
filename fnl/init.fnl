(module init)

(set vim.g.sexp_filetypes "clojure,fennel")

; Enable 24-bit RGB color in terminal
(set vim.opt.termguicolors true)

; Search incrementally and highlight matches
(set vim.opt.hlsearch true)
(set vim.opt.incsearch true)

; Highlight current line
(set vim.opt.cursorline true)

; Syntax highlighting and colorscheme
(vim.cmd "syntax enable")
(set vim.opt.background "dark")
(vim.cmd "colorscheme onedark")
(vim.cmd "hi StatusLine guifg=#000000 guibg=#b9c0ca")
(vim.cmd "hi StatusLineNC guifg=#000000 guibg=#59606a")

; Show filler and split vertically by default in diff mode
(set vim.opt.diffopt [ "filler" "vertical" ])

; Always show column with signs
(set vim.opt.signcolumn "yes")

; Set minimal command-line height
(set vim.opt.cmdheight 1)

; Always open all folds by default
(set vim.opt.foldenable false)

; Show line numbers
(set vim.opt.number true)

; Fill for deleted lines in diff
(set vim.opt.fillchars {"diff" "·"})

; Show command in command-line
(set vim.opt.showcmd true)

; Always keep some lines visible above and below cursor
(set vim.opt.scrolloff 2)

; Tabs and spaces
(set vim.opt.tabstop 2)
(set vim.opt.softtabstop 2)
(set vim.opt.shiftwidth 2)
(set vim.opt.expandtab true)

; Don't wrap long lines
(set vim.opt.wrap false)

; Smart indent on new line
(set vim.opt.smartindent true)

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

; Customize filetypes for extensions
(vim.cmd "augroup FileTypeCheck")
(vim.cmd "autocmd!")
(vim.cmd "autocmd BufNewFile,BufRead *.x set filetype=alex")
(vim.cmd "autocmd BufNewFile,BufRead *.y set filetype=happy")
(vim.cmd "autocmd BufNewFile,BufRead *.html set filetype=htmljinja.html")
(vim.cmd "autocmd BufNewFile,BufRead *.j2 set filetype=jinja")
(vim.cmd "autocmd BufNewFile,BufRead *.jinja set filetype=jinja")
(vim.cmd "autocmd BufNewFile,BufRead *.hbs set filetype=html")
(vim.cmd "autocmd BufNewFile,BufRead *.handlebars set filetype=html")
(vim.cmd "autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby")
(vim.cmd "autocmd BufNewFile,BufRead Jenkinsfile set filetype=groovy")
(vim.cmd "autocmd BufNewFile,BufRead *.sql set filetype=pgsql")
(vim.cmd "autocmd BufNewFile,BufRead *.pyi set filetype=python")
(vim.cmd "autocmd BufNewFile,BufRead *.cassandra set filetype=cql")
(vim.cmd "autocmd BufNewFile,BufRead build.boot set filetype=clojure")
(vim.cmd "autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx")
(vim.cmd "autocmd BufNewFile,BufRead *.fnl set filetype=fennel")
(vim.cmd "augroup END")

; Customize tabs and spaces settings for filetypes
(vim.cmd "augroup FileTypeOptions")
(vim.cmd "autocmd!")
(vim.cmd "autocmd FileType go setlocal ts=4 sts=4 sw=4 noet nolist")
(vim.cmd "autocmd FileType python,snippet setlocal ts=4 sts=4 sw=4 et")
(vim.cmd "augroup END")

; Define leader keys
(set vim.g.mapleader "\\")
(set vim.g.maplocalleader ",")

(defn- map [mode from to opts]
  (vim.api.nvim_set_keymap mode from to opts))

(defn- noremap [mode from to]
  (map mode from to {:noremap true}))

(noremap :n "<C-L>" ":nohl<CR><C-L>")

; NERDTree
(set vim.g.NERDTreeIgnore [ "\\.py[co]$" "\\.swp$" ])
(noremap "" "<Leader>/" ":NERDTreeToggle<CR>")

; Telescope
(noremap :n "<Leader>ff" ":Telescope find_files<CR>")

(set vim.g.vim_markdown_folding_disabled 1)

(set vim.g.python_no_builtin_highlight 1)
(set vim.g.python_no_doctest_code_highlight 1)
(set vim.g.python_no_doctest_highlight 1)

(set vim.g.is_posix 1)
(set vim.g.sh_no_error 1)
(set vim.g.is_bash 1)

(set vim.g.haskell_indent_if 2)
(set vim.g.haskell_indent_case 2)
(set vim.g.haskell_indent_let 2)

(set vim.g.neomake_python_enabled_makers [ "pylint" ])
(set vim.g.neomake_open_list 1)

(set vim.g.pymode_trim_whitespaces 0)
(set vim.g.pymode_optional_max_line_length 89)
(set vim.g.pymode_link 0)
(set vim.g.pymode_rope 0)
(set vim.g.pymode_rope_complete_on_dot 0)
(set vim.g.pymode_rope_goto_definition_cmd "e")

(set vim.g.clujure_fuzzy_indent_patterns [ "^go-loop$" ])

(map :n :gd "<Plug>(coc-definition)" {:silent true})
(map :n :gy "<Plug>(coc-type-definition)" {:silent true})
(map :n :gi "<Plug>(coc-implementation)" {:silent true})
(map :n :gr "<Plug>(coc-references)" {:silent true})
(map :n "[g" "<Plug>(coc-diagnostic-prev)" {:silent true})
(map :n "]g" "<Plug>(coc-diagnostic-next)" {:silent true})
