local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- カラースキームの設定
config.color_scheme = "iceberg-dark"

config.font = wezterm.font("HackGen35 console NF", {
	weight = "Regular",
	stretch = "Normal",
})

-- フォントサイズの設定
config.font_size = 16
config.line_height = 1.4

return config
