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
local gears				= require("gears")
local awful				= require("awful")
awful.rules				= require("awful.rules")
require("awful.autofocus")
local wibox				= require("wibox")
local beautiful		= require("beautiful")
local naughty   	= require("naughty")
local lain				= require("lain")
local revelation 	= require("revelation")
local treetile    = require("treesome")


------------------ VARIABLES ------------------
-- localisation
os.setlocale(os.getenv("LANG"))

-- unfocused clients transparency level
transparencyLevel = 0.8
-- no transparency for this clients
noTransparencyFor = { "Lxterminal", "vlc", "gnome-mplayer", "Steam" }

--terminal		= "urxvtc" or "xterm"
terminal		  = "lxterminal"
--quaketerm 	= "urxvtc -name quake" or "xterm -name quake"
--quaketerm		= "xterm -name quake"
editor 			  = os.getenv("EDITOR") or "nano"
editor_cmd 		= terminal .. " -e " .. editor
user			    = os.getenv("USER")

--raise_volume_cmd		= "amixer -D pulse -- sset Master 3%+ unmute"
--lower_volume_cmd		= "amixer -D pulse -- sset Master 3%- unmute"
--mute_volume_cmd		= "amixer -D pulse -- sset Master toggle"

browser		  = "firefox"
browser2	  = "chromium"
gui_editor  = "leafpad"
graphics	  = "gimp"
mail	      = "thunderbird"
filemanager = "files"
apprunner  	= "rofi -switchers run,drun,combi -show run"
calc        = "calc"

-- KEYBINDED KEYS
-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey			= "Mod4"
altkey			= "Mod1"


-- THEME (themes define colours, icons, font and wallpapers)
beautiful.init(os.getenv("HOME") .. "/.config/awesome/themes/gune/theme.lua")


------------------ FIRST PLUGINS ------------------
-- WALLPAPER
require("settings.wallpaper")

-- VOLUME ICON
require("plugins.volume")

-- RUN ONCE (auto start apps)
require("plugins.run_once")

-- CONKY
-- require("plugins.conky")

-- KEYDOC
require("plugins.keydoc")


------------------ AUTOSTART APPLICATIONS ------------------
run_once("thunar --daemon")
run_once("nitrogen \\--restore")
run_once("compton -b &")
run_once("nm-applet")
run_once("clipit")
run_once("seafile-applet")
--run_once("steam")
--run_once("redshift-gtk")


------------------ GLOBAL ------------------
-- ERRORS (error handling)
require("events.errors")

-- TAGS (layouts and tags definitions)
require("settings.layouts")
--require("settings.test.tags")
require("settings.tags")

-- MENUS (menus and menubar definitions)
require("settings.menu")

-- WIBOX (wibox definitions)
require("settings.wibox")

-- BINDINGS
-- mouse
require("settings.mouse")
-- keyboard
require("settings.keys")
-- Set keys
root.keys(globalkeys)
-- }}}

-- RULES
require("settings.rules")

-- SIGNALS (events management)
require("events.signals")
