(module lconfig.plugins.telescope
  {require {util lconfig.util}})

(defn config []
  (let [telescope (require "telescope")]
    (telescope.setup)
    (telescope.load_extension "fzf"))
  (util.noremap :n "<Leader>ff" ":Telescope find_files<CR>")
  (util.noremap :n "<Leader>fg" ":Telescope live_grep<CR>"))
