local M = {}

M.map = function(mode, from, to, opts)
  return vim.api.nvim_set_keymap(mode, from, to, opts)
end

M.noremap = function(mode, from, to)
  return M.map(mode, from, to, {noremap = true})
end

return M
