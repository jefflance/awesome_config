--[[
	Custom config for Awesome WM based on:                                     
		Multicolor Awesome WM config 2.0 
		github.com/copycat-killer
	with:
		- modular config files
		- local Awesome modules replaced
		  by Awesome system-wide modules
                                      
--]]

------------------ REQUIRED LIBRARIES ------------------
local gears	= require("gears")
local awful	= require("awful")
awful.rules	= require("awful.rules")
require("awful.autofocus")
local wibox	= require("wibox")
local beautiful	= require("beautiful")
local naughty   = require("naughty")
local lain		= require("lain")
-- require("eminent")


------------------ VARIABLES ------------------
-- localisation
os.setlocale(os.getenv("LANG"))

terminal	= "urxvtc" or "xterm"
quaketerm 	= "urxvtc -name quake" or "xterm -name quake"
editor 		= os.getenv("EDITOR") or "nano"
editor_cmd 	= terminal .. " -e " .. editor
user		= os.getenv("USER")

raise_volume_cmd	= "amixer -q set Master 5+ unmute"
lower_volume_cmd	= "amixer -q set Master 5- unmute"
mute_volume_cmd		= "amixer -q set Master toggle"

browser		= "firefox"
browser2	= "chromium"
gui_editor	= "kate"
graphics	= "gimp"
mail		= "thunderbird"

-- KEYBINDED KEYS
-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey	= "Mod4"
altkey	= "Mod1"


-- THEME (themes define colours, icons, font and wallpapers)
beautiful.init(os.getenv("HOME") .. "/.config/awesome/themes/multicolor/theme.lua")


------------------ FIRST PLUGINS ------------------
-- WALLPAPER
require("settings.wallpaper")

-- VOLUME ICON
require("plugins.volume_pavel_mod")

-- RUN ONCE (auto start apps)
require("plugins.run_once")

-- KEYDOC
require("plugins.keydoc")


------------------ AUTOSTART APPLICATIONS ------------------
run_once("nitrogen \-\-restore")
--run_once("urxvtd -q -o") -- -f")
run_once("unclutter")
run_once("nm-applet")


------------------ GLOBAL ------------------
-- ERRORS (error handling)
require("events.errors")

-- TAGS (layouts and tags definitions)
require("settings.tags")

-- MENUS (menus and menubar definitions)
require("settings.freedesktop_menu")
--require("plugins/freedesktop/freedesktop")

-- WIBOX (wibox definitions)
require("settings.wibox")

-- BINDINGS
-- mouse
require("bindings.mouse")
-- keyboard
require("bindings.keys")
-- keyboard
--require("bindings.custom")
-- Set keys
root.keys(globalkeys)
-- }}}

-- RULES
require("settings.rules")

-- SIGNALS (events management)
require("events.signals")


