-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })

-- Redo
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })

-- Select all
vim.api.nvim_set_keymap('n', '<Leader>a', 'ggVG', { noremap = true })

-- Move up/down by display line
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })

-- Scroll
vim.api.nvim_set_keymap('n', 'zk', 'zt', { noremap = true })
vim.api.nvim_set_keymap('n', 'zj', 'zb', { noremap = true })

-- Tab
vim.api.nvim_set_keymap('n', 'gh', 'gT', { noremap = true })
vim.api.nvim_set_keymap('n', 'gl', 'gt', { noremap = true })
