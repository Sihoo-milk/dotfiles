return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- デフォルトで隠されているかどうか
        show_hidden_count = true,
        hide_dotfiles = false, -- dotfileを隠すかどうか
        hide_gitignored = false, -- gitignoreされているファイルを隠すかどうか
      },
    },
  },
}
