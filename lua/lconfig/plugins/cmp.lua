M = {}

M.config = function()
  local cmp = require("cmp")
  local luasnip = require("luasnip")

  cmp.setup({
    snippet = {
      expand = function(args)
        print(vim.inspect(args))
        require("luasnip").lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    },
    experimental = {
      ghost_text = true,
    }
  })
end

return M
