--[[
	settings/layouts.lua

		Layouts definition

		Jeff LANCE <jeff.lance@mala.fr>
		19/11/2016
--]]


local lain = require("lain")
local awful = require("awful")


-- {{{ Layouts
-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    awful.layout.suit.floating,
    treesome,
    -- awful.layout.suit.tile.left,
    -- awful.layout.suit.tile.bottom,
    -- awful.layout.suit.tile.top,
    lain.layout.centerfair,
    awful.layout.suit.fair.horizontal,
    -- awful.layout.suit.spiral,
    -- awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier
}
-- }}}


-- {{{ Settings
-- Layouts settings

-- Cascadetile
lain.layout.cascadetile.cascade_offset_x = 2
lain.layout.cascadetile.cascade_offset_y = 32
lain.layout.cascadetile.extra_padding = 5
lain.layout.cascadetile.nmaster = 5
lain.layout.cascadetile.ncol = 1

-- Termfair
lain.layout.centerfair.nmaster = 2
lain.layout.centerfair.ncol = 1
-- }}
