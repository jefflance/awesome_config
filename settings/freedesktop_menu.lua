--[[
	settings/freedesktop_menu.lua

		menus definition

	Jeff LANCE <jeff.lance@mala.fr>
	11/05/2014
--]]

local awful = require("awful")
local beautiful = require("beautiful")

require('plugins.freedesktop.utils')
freedesktop.utils.terminal = terminal  -- default: "xterm"
freedesktop.utils.icon_theme = 'Numix-Circle' -- look inside /usr/share/icons/, default: nil (don't use icon theme)
require('plugins.freedesktop.menu')
-- require("debian.menu")

menu_items = freedesktop.menu.new()
myawesomemenu = {
	{ "manuel", terminal .. " -e man awesome", freedesktop.utils.lookup_icon({ icon = 'help' }) },
    { "configurer", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua", freedesktop.utils.lookup_icon({ 
    icon = 'package_settings' }) },
    { "recharcher", awesome.restart, freedesktop.utils.lookup_icon({ icon = 'gtk-refresh' }) },
    { "déconnexion", "pkill -u " .. user, freedesktop.utils.lookup_icon({ icon = 'gtk-quit' }) }
}

table.insert(menu_items, { "-----------", nil, nil })
table.insert(menu_items, { "awesome", myawesomemenu, beautiful.awesome_icon })
table.insert(menu_items, { "terminal", terminal, freedesktop.utils.lookup_icon({icon = 'terminal'}) })

mymainmenu = awful.menu.new({ items = menu_items, width = 400 })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

