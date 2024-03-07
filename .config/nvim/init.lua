require("keymaps")
require("options")
require("plugins")
require('im_select').setup {
    default_im_select = "com.google.inputmethod.Japanese.Roman"
}

vim.cmd[[colorscheme iceberg]]
-- 上記は、vimコマンドでcolorscheme icebergを実行するという意味
