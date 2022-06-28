local util = require("lconfig.util")
local M = {}

M.config = function()
  local telescope = require("telescope")
  telescope.setup {}
  telescope.load_extension("fzf")

  util.noremap("n", "<Leader>ff", ":Telescope find_files<CR>")
  util.noremap("n", "<Leader>fg", ":Telescope live_grep<CR>")
  util.noremap("n", "<Leader>fb", ":Telescope buffers<CR>")
end

return M
