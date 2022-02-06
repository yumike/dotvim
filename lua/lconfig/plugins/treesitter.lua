local M = {}

M.config = function()
  require("nvim-treesitter.configs").setup({
    highlight = {enable = true},
    incremental_selection = {enable = true},
    textobjects = {enable = true}
  })
end

return M
