--[[
	settings/menu.lua

		menus definition

	Jeff LANCE <jeff.lance@mala.fr>
	11/05/2014
--]]

local awful   = require("awful")
awful.menu    = require("awful.menu")
local menugen = require("menugen")
local beautiful = require("beautiful")


-- {{{
menu_items = menugen.build_menu()

myawesomemenu = {
    {"manuel", terminal .. " -e man awesome"},
    {"éditer config",
     editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua"},
    {"redémarrer", awesome.restart},
    {"quitter", awesome.quit}
}
table.insert(menu_items, 1, { "awesome", myawesomemenu, beautiful.awesome_icon })
table.insert(menu_items, 2, { "-------"})
--
-- mymainmenu = awful.menu(
--     {
--         items = {
--             {"awesome", myawesomemenu, beautiful.awesome_icon},
--             {"open terminal", terminal}}
--           })
--
-- mylauncher = awful.widget.launcher({image = image(beautiful.awesome_icon),
--                                     menu = mymainmenu})
--- }}}

-- {{{ Desktop menu
desktopmenu = awful.menu.new({ items = menu_items,
                               theme = { height = 20, width = 200 }})
-- }}}
