--[[
	settings/menu.lua

		menus definition

	Jeff LANCE <jeff.lance@mala.fr>
	11/05/2014
--]]


local awful   = require("awful")
awful.menu    = require("awful.menu")
local menugen = require("menugen")
beautiful = require("beautiful")


-- {{{
-- Create a main menu and a launcher
menu_items = menugen.build_menu()
myawesomemenu = {
    {"manuel", terminal .. " -e man awesome"},
    {"éditer config", "atom" .. " " .. awful.util.getdir("config") .. "/rc.lua"},
    {"redémarrer", awesome.restart},
    {"quitter", awesome.quit}
}
-- table.insert(menu_items, 1, { "awesome", myawesomemenu, beautiful.awesome_icon })
-- table.insert(menu_items, 2, { "-------"})
--
mymainmenu = awful.menu({ items = { {"awesome", myawesomemenu},
                                    {"Menu", menu_items},
                                    {"open terminal", terminal}
                                  },
                          theme = { height = 20, width = 200 }
                       })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu
                                  })
--- }}}

-- {{{ Desktop menu
-- desktopmenu = awful.menu.new({ items = menu_items,
--                                theme = { height = 20, width = 200 }})
-- }}}
