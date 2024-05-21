return {
	{
		"oahlen/iceberg.nvim",
		lazy = true,
		priority = 1000,
		name = "iceberg",
	},

	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		name = "tokyonight",
		opts = { style = "night" },
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
}
