local wezterm = require "wezterm"


local M = {}



function M.gen_random_font(config)
	config.font = wezterm.font("Fira Code")
end

return M
