local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 18.0
-- config.color_scheme = "AdventureTime"
config.color_scheme = "Aci (Gogh)"

-- local act = wezterm.action
-- custom key configuration
-- config.keys = {
-- 	{
-- 		key = "k",
-- 		mods = "CMD",
-- 		action = act.Multiple({
-- 			act.ClearScrollback("ScrollbackAndViewport"),
-- 			act.SendKey({ key = "L", mods = "CTRL" }),
-- 		}),
-- 	},
-- }

return config
