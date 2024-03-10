local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("keymaps")
require("options")
require("autocmds")

require("lazy").setup(plugins, opts)

-- vimコマンドでcolorscheme icebergを実行するという意味
vim.cmd[[colorscheme iceberg]]
