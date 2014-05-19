--[[
	settings/menus.lua

		menus definition

	Jeff LANCE <jeff.lance@mala.fr>
	11/05/2014
--]]

local awful = require("awful")
local beautiful = require("beautiful")
local menubar = require("menubar")

-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
   { "manuel", terminal .. " -e man awesome" },
   { "éditer config", editor_cmd .. " " .. awesome.conffile },
   { "recharger", awesome.restart },
   { "déconnexion", "pkill -u " .. user }
}


mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "terminal", terminal }
                                  }
                        })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

