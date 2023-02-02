local M = {}

local function on_attach(_, bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  vim.api.nvim_create_autocmd({'BufWritePre'}, {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.formatting_sync(nil, 1000)
    end
  })
end

M.config = function()
  local lspconfig = require("lspconfig")

  local opts = { noremap=true, silent=true }
  vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  lspconfig.clojure_lsp.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })

  -- Disable diagnostics for clojure log files
  vim.cmd [[autocmd BufNewFile conjure-log-* lua vim.diagnostic.disable(0)]]

  lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  });

  lspconfig.hls.setup({
    cmd = { "haskell-language-server", "--lsp" },
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  })

  lspconfig.tsserver.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })

  -- lspconfig.pyright.setup({
  --   on_attach = on_attach,
  --   capabilities = capabilities,
  --   flags = {
  --     debounce_text_changes = 150,
  --   },
  -- })

  local pylsp_mypy_overrides = { true }
  if vim.env.VIRTUAL_ENV ~= nil then
    pylsp_mypy_overrides = { "--python-executable", vim.env.VIRTUAL_ENV .. "/bin/python", true }
  end

  lspconfig.pylsp.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      pylsp = {
        plugins = {
          jedi_completion = {
            enabled = true,
            include_params = true,
          },
          black = {
            enabled = true,
          },
          pycodestyle = {
            enabled = false,
          },
          pylsp_mypy = {
            enabled = true,
            overrides = pylsp_mypy_overrides,
          },
        },
      },
    },
  })

  lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  })

  require("neodev").setup({})
  lspconfig.sumneko_lua.setup({
    settings = {
      Lua = {
        completion = {
          callSnippet = "Replace"
        }
      }
    }
  })
end

return M
