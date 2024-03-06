-- Leaderキーの設定
vim.api.nvim_set_var('mapleader', ' ')

-- jキーを二度押しでESCキー
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'っｊ', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'ｊｊ', '<ESC>', { noremap = true, silent = true })

-- vimの終了
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })

-- Redo
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })

-- 全選択
vim.api.nvim_set_keymap('n', '<Leader>a', 'ggVG', { noremap = true })

-- カーソル行を表示行で移動
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })

-- Scroll
vim.api.nvim_set_keymap('n', 'zk', 'zt', { noremap = true })
vim.api.nvim_set_keymap('n', 'zj', 'zb', { noremap = true })

-- 検索ハイライトを消す
vim.api.nvim_set_keymap('n', '<C-n>', ':noh<CR>', { noremap = true })

-- ウィンドウの分割
vim.api.nvim_set_keymap('n', 'ss', '<C-w>s', { noremap = true })
vim.api.nvim_set_keymap('n', 'sv', '<C-w>v', { noremap = true })

-- ウィンドウ間のカーソル移動 --
vim.api.nvim_set_keymap('n', 'sk', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', 'sj', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', 'sh', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', 'sl', '<C-w>l', { noremap = true })

-- Tab
vim.api.nvim_set_keymap('n', 'gh', 'gT', { noremap = true })
vim.api.nvim_set_keymap('n', 'gl', 'gt', { noremap = true })
