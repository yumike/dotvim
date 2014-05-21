" ghc-mod
map <buffer> <LocalLeader>gt :GhcModType<CR>
map <buffer> <LocalLeader>gr :GhcModTypeClear<CR>
map <buffer> <LocalLeader>gc :GhcModCheck<CR>
map <buffer> <LocalLeader>gl :GhcModLint<CR>
map <buffer> <LocalLeader>ge :GhcModExpand<CR>

" Dash
map <buffer> <LocalLeader>d :Dash <cword> haskell<CR>
