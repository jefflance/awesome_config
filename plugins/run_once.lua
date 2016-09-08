--[[
	plugins/run_once.lua

		Autostart once apps

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]

local awful = require("awful")

function run_once(prg,arg_string,pname,screen)
  if not prg then
    do return nil end
  end

  if not pname then
    pname = prg
  end

  if not arg_string then
    awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. "' || (" .. prg .. ")",screen)
  else
    awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. " ".. arg_string .."' || (" .. prg .. " " .. arg_string .. ")",screen)
  end
end
