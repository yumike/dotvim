vim.g.db_ui_save_location = "~/.config/dabbod_ui"
vim.g.db_ui_execute_on_save = 0

local map = vim.api.nvim_set_keymap
map("n", "<Leader>du", ":DBUIToggle<CR>", { silent = true })
map("n", "<Leader>df", ":DBUIFindBuffer<CR>", { silent = true })
map("n", "<Leader>dr", ":DBUIRenameBuffer<CR>", { silent = true })
map("n", "<Leader>dl", ":DBUILastQueryInfo<CR>", { silent = true })
