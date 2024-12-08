local wezterm = require 'wezterm'
math.randomseed(os.time())

-- Define your table
local myTable = { "Fira Code", "JetBrains Mono" }
local M = {}
function M.apply_mappings(config)
	config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }
	config.keys = {
		{
			key = '|',
			mods = 'LEADER',
			action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
		},
		-- {
		-- 	key = 'f',
		-- 	mods = 'LEADER',
		-- 	action = function()
		-- 		local randomIndex = math.random(1, #myTable)
		--
		-- 		print("Item:" .. myTable[randomIndex])
		-- 		config.font = wezterm.font(myTable[randomIndex])
		-- 	end
		-- }
	}
end

return M
