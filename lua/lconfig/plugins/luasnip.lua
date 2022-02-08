local luasnip = require('luasnip')

_G.luasnip_expand_or_jump_forward = function()
  if luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  end
  return ""
end

_G.luasnip_jump_backwards = function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
  return ""
end

vim.api.nvim_set_keymap("i", "<C-k>", "v:lua.luasnip_expand_or_jump_forward()", {silent = true, expr = true})
vim.api.nvim_set_keymap("s", "<C-k>", "v:lua.luasnip_expand_or_jump_forward()", {silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-j>", "v:lua.luasnip_jump_backwards()", {silent = true, expr = true})
vim.api.nvim_set_keymap("s", "<C-j>", "v:lua.luasnip_jump_backwards()", {silent = true, expr = true})
