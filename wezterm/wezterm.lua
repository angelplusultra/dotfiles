-- Pull in the wezterm API
local wezterm = require 'wezterm'
local font = require "font"
local mappings = require "mappings"
-- local dimmer = { brightness = 0.1 }

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font('JetBrains Mono', { italic = false })
-- config.color_scheme = 'Catppuccin Mocha'
config.color_scheme = 'rose-pine'
config.macos_window_background_blur = 20


-- config.window_background_opacity = 0.95
config.background = {
{

						-- catpuccin background
            -- source = {Color = "rgba(30, 30, 46, 0.85)"},  -- Dark background with some transparency
						-- Rose Pine
            source = {Color = "rgb(25, 23, 36, 0.85)"},  -- Dark background with some transparency
            width = "100%",
            height = "100%",
        },
	{
		source = {
			File = "/Users/marcellofitton/.config/wezterm/IMG_3461.PNG"
			-- File = "/Users/marcellofitton/.config/wezterm/download.gif"
		},
		opacity = 0.4,
		-- hsb = dimmer,
		-- width = "100%"
		vertical_align = "Middle",
    horizontal_align = "Center",


	}
}
config.font_size = 14
config.window_padding = {
	left = 50,
	right = 50,
	top = 50,
	bottom = 50,
}
config.window_decorations = "RESIZE"
config.enable_tab_bar = false


-- font.gen_random_font(config)
mappings.apply_mappings(config)
-- and finally, return the configuration to wezterm

return config
