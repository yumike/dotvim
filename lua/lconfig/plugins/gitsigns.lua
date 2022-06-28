local M = {}

M.config = function ()
  local gitsigns = require("gitsigns")
  gitsigns.setup()
end

return M
