--[[
	settings/tags.lua

		Tags definition

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]


local awful = require("awful")


-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {
--     name = { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
--     name = { "www", "mail", "edit", 4, 5, 6, 7, 8, 9 },
--     name = { "1:www", "2:mail", 3, 4, 5, 6, 7, 8, "9:term" },
--     name = { "1:", "2:", "3:", "4:", "5:", "6:", "7:www", "8:mail", "9:term" },
    name = { "1:", "2:", "3:", "4:", "5:", "6:", " ", " ", "" },
    layout = { layouts[1], layouts[1], layouts[1], layouts[1], layouts[1],
               layouts[1], layouts[4], layouts[4], layouts[3]
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
