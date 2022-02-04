local pack_path = vim.fn.stdpath("data") .. "/site/pack"

function ensure (user, repo)
  local install_path = string.format("%s/packer/start/%s", pack_path, repo)
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.cmd(string.format("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    vim.cmd(string.format("packadd %s", repo))
  end
end

ensure("Olical", "aniseed")
vim.g["aniseed#env"] = true
