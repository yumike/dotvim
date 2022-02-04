(module lconfig.plugins
  {autoload {packer packer}})

(defn- modfns [mod]
  {:setup  (not= (. mod "setup") nil)
   :config (not= (. mod "config") nil)})

(defn- use [...]
  (let [specs [...]]
    (packer.startup
      (fn [use]
        (each [_ spec (ipairs specs)]
          (if (not= spec.mod nil)
            (let [mod (require (.. "lconfig.plugins." spec.mod))
                  fns (modfns mod)]
              (if fns.setup (tset spec :setup (string.format "require(\"lconfig.plugins.%s\").setup()" spec.mod)))
              (if fns.config (tset spec :config (string.format "require(\"lconfig.plugins.%s\").config()" spec.mod)))))
          (tset spec 1 spec.name)
          (use spec))))))

(use {:name :wbthomason/packer.nvim}
     {:name :Olical/aniseed}
     {:name :joshdick/onedark.vim}
     {:name :leafgarland/typescript-vim}
     {:name :peitalin/vim-jsx-typescript}
     {:name :guns/vim-clojure-static}
     {:name :Olical/conjure}
     {:name :nvim-telescope/telescope-fzf-native.nvim :run "make"}
     {:name :nvim-telescope/telescope.nvim :mod :telescope :requires [[:nvim-lua/plenary.nvim]]}
     {:name :tpope/vim-fugitive}
     {:name :guns/vim-sexp :mod :sexp}
     {:name :scrooloose/nerdtree :mod :nerdtree}
     {:name :neoclide/coc.nvim :branch :release}
     {:name :pappasam/coc-jedi :run "yarn install --frozen-lockfile && yarn build" :branch :main}
     {:name :iamcco/coc-diagnostic :run "yarn install --frozen-lockfile && yarn build"})
