--[[
	settings/wallpaper.lua

		Set wallpaper

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

local gears = require("gears")
local beautiful = require("beautiful")

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
-- }}}

