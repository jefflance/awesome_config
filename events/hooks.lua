--[[
	events/hooks.lua

		Hooks management

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]


local awful = require("awful")


awful.hooks.timer.register(60, function ()
       volumecfg.update()
end)
