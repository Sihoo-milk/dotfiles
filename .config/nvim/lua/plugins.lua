-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --
  -- プラグインのインストール
  use 'cocopon/iceberg.vim'
  use 'keaising/im-select.nvim'
  use 'mattn/emmet-vim'
  use 'nikvdp/ejs-syntax'
  use 'sindrets/diffview.nvim'

end)
