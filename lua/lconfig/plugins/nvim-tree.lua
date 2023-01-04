local M = {}

M.config = function ()
  require("nvim-tree").setup({
    renderer = {
      icons = {
        show = {
          file = false,
          folder = false,
          git = false,
        },
        glyphs = {
          folder = {
            arrow_closed = "▸",
            arrow_open = "▾",
          }
        }
      }
    }
  })

  vim.keymap.set("n", "<Leader>/", ":NvimTreeToggle<CR>", { silent = true })
end

return M
