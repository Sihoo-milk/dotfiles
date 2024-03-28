return {
	-- add iceberg
	{
		"cocopon/iceberg.vim",
		enabled = false,
		lazy = true,
		priority = 1000,
		name = "iceberg",
	},

	-- add tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		name = "tokyonight",
		opts = { style = "moon" },
	},

	-- Configure LazyVim to load tokyonight
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
}
