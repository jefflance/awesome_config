--[[
	settings/layoutss.lua

		Layouts definition

		Jeff LANCE <jeff.lance@mala.fr>
		19/11/2016
--]]

local lain = require("lib.lain")
local awful = require("awful")

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    awful.layout.suit.floating,
    lain.layout.cascadetile,
--    awful.layout.suit.tile.left,
--    awful.layout.suit.tile.bottom,
--    awful.layout.suit.tile.top,
    lain.layout.termfair,
--    awful.layout.suit.fair.horizontal,
--     awful.layout.suit.spiral,
--     awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
--     awful.layout.suit.magnifier
}
-- }}}

-- Layouts settings
lain.layout.cascadetile.cascade_offset_x = 2
lain.layout.cascadetile.cascade_offset_y = 32
lain.layout.cascadetile.extra_padding = 5
lain.layout.cascadetile.nmaster = 5
lain.layout.cascadetile.ncol = 1
-- }}
