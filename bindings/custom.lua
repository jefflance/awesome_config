--[[
	bindings/custom.lua

		Custom keybindings

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

-- local awful = require("awful")

-- {{{ Key bindings
-- globalkeys = awful.util.table.join(globalkeys,
--     -- MULTIMEDIA KEYS
-- 	awful.key({ }, "XF86AudioRaiseVolume", function () volumecfg.up() end),
-- 	awful.key({ }, "XF86AudioLowerVolume", function () volumecfg.down() end),
-- 	awful.key({ }, "XF86AudioMute", function () volumecfg.toggle() end)
-- )
--
-- clientkeys = awful.util.table.join(clientkeys,
--     -- DRAG WINDOW TO WORKSPACE
--     awful.key({ modkey, "Shift"   }, "Left",
--         function (c)
--             local curidx = awful.tag.getidx()
--             if curidx == 1 then
--                 awful.client.movetotag(tags[client.focus.screen][#tags[client.focus.screen]])
--             else
--                 awful.client.movetotag(tags[client.focus.screen][curidx - 1])
--             end
--             awful.tag.viewidx(-1)
--         end),
--     awful.key({ modkey, "Shift"   }, "Right",
--         function (c)
--             local curidx = awful.tag.getidx()
--             if curidx == #tags[client.focus.screen] then
--                 awful.client.movetotag(tags[client.focus.screen][1])
--             else
--                 awful.client.movetotag(tags[client.focus.screen][curidx + 1])
--             end
--             awful.tag.viewidx(1)
--         end)
-- )
