--[[
	settings/menu.lua

		menus definition

	Jeff LANCE <jeff.lance@mala.fr>
	11/05/2014
--]]

local awful   = require("awful")
awful.menu    = require("awful.menu")
local menugen = require("menugen")

-- {{{ Freedesktop Menu
mymainmenu = awful.menu.new({ items = menugen.build_menu(),
                              theme = { height = 20, width = 200 }})
-- }}}
