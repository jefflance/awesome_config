--[[
	settings/rules.lua

		Def propertie rules for some apps

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]


local beautiful = require("beautiful")
require("awful")


-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
-- SHIFTY: application matching rules
-- order here matters, early rules will be applied first
shifty.config.apps = {
    {
        match = {
            "Navigator",
            "Firefox",
        },
        tag = "web",
    },
    {
        match = {
            "Mail",
            "Thunderbird",
        },
        tag = "mail",
    },
    {
        match = {
            "pcmanfm",
            "pantheon-files",
        },
        slave = true
    },
    {
        match = {
            "OpenOffice.*",
            "Abiword",
            "Gnumeric",
        },
        tag = "office",
    },
    {
        match = {
            "Mplayer.*",
            "Mirage",
            "gimp",
            "gtkpod",
            "Ufraw",
            "easytag",
        },
        tag = "media",
        nopopup = true,
    },
    {
        match = {
            "MPlayer",
            "Gnuplot",
            "galculator",
        },
        float = true,
    },
    {
        match = {
            terminal,
        },
        honorsizehints = false,
        slave = true,
    },
    {
        match = {""},
        buttons = awful.util.table.join(
            awful.button({}, 1, function (c) client.focus = c; c:raise() end),
            awful.button({modkey}, 1, function(c)
                client.focus = c
                c:raise()
                awful.mouse.client.move(c)
                end),
            awful.button({modkey}, 3, awful.mouse.client.resize)
            )
    },
}
-- }}}
