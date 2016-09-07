--[[
	settings/rules.lua

		Def propertie rules for some apps

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

local awful = require("awful")
local beautiful = require("beautiful")

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     size_hints_honor = false,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     maximized_vertical   = false,
                     maximized_horizontal = false } },
    -- Set floating apps
    { rule = { class = "vlc" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    -- Set Firefox to always map on tags number 1 of screen 1.
    { rule = { class = "Firefox" },
      properties = { tag = tags[1][7] } },
    -- Set Thunderbird to always map on tags number 2 of screen 1.
    { rule = { class = "Thunderbird" },
      properties = { tag = tags[1][8] } },
    -- Set URxvt/XTerm to always map on tags number 9 of screen 1.
    { rule_any = { class = { "lxterminal", "Lxterminal" } },
      properties = { tag = tags[1][9] } },
    -- Set KeePass2 to always be floating.
    { rule_any = { class = { "keepassx", "KeePassX" } },
      properties = { floating = true } },
    -- Set Conky
    { rule = { class = "Conky" },
      properties = {  floating = true,
                      sticky = true,
                      ontop = false,
                      focusable = false } },
}
-- }}}
