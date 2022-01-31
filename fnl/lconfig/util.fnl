(module lconfig.util)

(defn map [mode from to opts]
  (vim.api.nvim_set_keymap mode from to opts))

(defn noremap [mode from to]
  (map mode from to {:noremap true}))
