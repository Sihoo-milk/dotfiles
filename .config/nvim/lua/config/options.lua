-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Setting for line wrapping
vim.opt.wrap = true -- Enable line wrapping.
vim.opt.breakindent = true -- Align the indentation of wrapped lines.

-- Tab / Indent
vim.opt.expandtab = true -- Expand tabs with spaces
vim.opt.tabstop = 2 -- Tab character width for visual representation
vim.opt.shiftwidth = 2 -- Auto indent width
vim.opt.softtabstop = 2 -- Set the number of spaces inserted when pressing the Tab key in insert mode.
vim.opt.list = true
vim.opt.listchars:append({ tab = "\\▸" })
