return {
  -- add iceberg
  {
    "cocopon/iceberg.vim",
    lazy = true,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "iceberg",
    },
  },
}
