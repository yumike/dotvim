local util = require("lconfig.util")
local M = {}

M.setup = function()
  vim.g.NERDTreeIgnore = {"\\.py[co]$", "\\.swp$"}
  vim.g.NERDTreeStatusline = -1

  util.noremap("", "<Leader>/", ":NERDTreeToggle<CR>")
end

return M
