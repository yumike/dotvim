local util = require("lconfig.util")

util.map("n", "gd", "<Plug>(coc-definition)", {silent = true})
util.map("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
util.map("n", "gi", "<Plug>(coc-implementation)", {silent = true})
util.map("n", "gr", "<Plug>(coc-references)", {silent = true})
util.map("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
util.map("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})
