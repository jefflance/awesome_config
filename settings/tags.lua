--[[
	settings/tags.lua

		Layout and tags definition

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

local awful = require("awful")

-- Table of layouts to cover with awful.layout.inc, order matters.
--layouts =
--{
--    awful.layout.suit.floating,
--    awful.layout.suit.tile,
----    awful.layout.suit.tile.left,
----    awful.layout.suit.tile.bottom,
----    awful.layout.suit.tile.top,
--    awful.layout.suit.fair,
----    awful.layout.suit.fair.horizontal,
----     awful.layout.suit.spiral,
----     awful.layout.suit.spiral.dwindle,
--    awful.layout.suit.max,
--    awful.layout.suit.max.fullscreen,
----     awful.layout.suit.magnifier
--}
-- }}}


-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {
--     name = { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
--     name = { "www", "mail", "edit", 4, 5, 6, 7, 8, 9 },
--     name = { "1:www", "2:mail", 3, 4, 5, 6, 7, 8, "9:term" },
    name = { "1:", "2:", "3:", "4:", "5:", "6:", "7:www", "8:mail", "9:term" },
    layout = { layouts[1], layouts[1], layouts[1], layouts[1], layouts[1],
               layouts[1], layouts[4], layouts[4], layouts[2]
             }
}

for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tags.name, s, tags.layout)
--	for i, t in ipairs(tags[s]) do
--		awful.tag.setproperty(t, "hide",  (i==5 or i==6 or i==7 or i==8 or i==9) and true)
--	 end
end
-- }}}
