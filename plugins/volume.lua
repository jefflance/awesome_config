--[[
	plugins/volume.lua

		Volume control widget
		Based on Pavel's mod widget on the wiki
		and adapted for Awesome 3.5

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")

volicon = wibox.widget.imagebox(beautiful.widget_vol)

volumecfg_widget = wibox.widget.textbox()
volumecfg_widget:set_align("right")

volumecfg = {}
volumecfg.cardid  = 0
volumecfg.channel = "Master"

-- command must start with a space!
volumecfg.mixercommand = function (command)
       local fd = io.popen("amixer -c " .. volumecfg.cardid .. command)
       local status = fd:read("*all")
       fd:close()
       local volume = string.match(status, "(%d?%d?%d)%%")
       volume = string.format("% 3d", volume)
       status = string.match(status, "%[(o[^%]]*)%]")
       if string.find(status, "on", 1, true) then
               volume = volume .. "♪"
       else
               volume = volume .. "x"
       end
       volumecfg_widget:set_text(volume)
end
volumecfg.update = function ()
       volumecfg.mixercommand(" sget " .. volumecfg.channel)
end
volumecfg.up = function ()
       volumecfg.mixercommand(" -- sset " .. volumecfg.channel .. " 1%+")
end
volumecfg.down = function ()
       volumecfg.mixercommand(" -- sset " .. volumecfg.channel .. " 1%-")
end
volumecfg.toggle = function ()
       volumecfg.mixercommand(" -- sset " .. volumecfg.channel .. " toggle")
end

volumecfg_widget:buttons(awful.util.table.join(
       awful.button({ }, 4, function () volumecfg.up() end),
       awful.button({ }, 5, function () volumecfg.down() end),
       awful.button({ }, 1, function () volumecfg.toggle() end)
))
volumecfg.update()
