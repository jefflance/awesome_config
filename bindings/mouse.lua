--[[
	bindings/mouse.lua

		Mouse bindings

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

local awful = require("awful")

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

