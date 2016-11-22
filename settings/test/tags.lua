--[[
	settings/tags.lua

		Layout and tags definition

		Jeff LANCE <jeff.lance@mala.fr>
		20/11/2016
--]]


local awful = require("awful")
local tyrannical = require("lib.tyrannical")


tyrannical.tags = {
    {
        name        = "",
        init        = true,
        exclusive   = true,
      --icon        = "~net.png",                 -- Use this icon for the tag (uncomment with a real path)
        screen      = screen.count()>1 and 2 or 1,-- Setup on screen 2 if there is more than 1 screen, else on screen 1
        layout      = awful.layout.suit.max,      -- Use the max layout
        class = {
            "Opera"         , "Firefox"        , "Rekonq"    , "Dillo"        , "Arora",
            "Chromium"      , "nightly"        , "minefield"     }
    } ,
    {
        name = "",
        init        = true,
        exclusive   = true,
        screen      = 1,
        layout      = awful.layout.suit.tile,
        exec_once   = {"dolphin"}, --When the tag is accessed for the first time, execute this command
        class  = {
            "Thunar", "Konqueror", "Dolphin", "ark", "Nautilus","emelfm"
        }
    } ,
    {
        name = "",
        init        = true,
        exclusive   = true,
        screen      = 1,
        layout      = awful.layout.suit.max,
        class ={
            "Atom", "Kate", "KDevelop", "Codeblocks", "Code::Blocks" , "DDD", "kate4"}
    } ,
		{
				name        = "",                 -- Call the tag "Term"
				init        = true,                   -- Load the tag on startup
				exclusive   = true,                   -- Refuse any other type of clients (by classes)
				screen      = {1,2},                  -- Create this tag on screen 1 and screen 2
				layout      = awful.layout.suit.tile, -- Use the tile layout
				instance    = {"dev", "ops"},         -- Accept the following instances. This takes precedence over 'class'
				class       = { --Accept the following classes, refuse everything else (because of "exclusive=true")
						"lxterminal", "Lxterminal", "xterm" , "urxvt" , "aterm","URxvt","XTerm","konsole","terminator","gnome-terminal"
				}
		}
}

-- Ignore the tag "exclusive" property for the following clients (matched by classes)
tyrannical.properties.intrusive = {
    "ksnapshot"     , "pinentry"       , "gtksu"     , "kcalc"        , "xcalc"               ,
    "feh"           , "Gradient editor", "About KDE" , "Paste Special", "Background color"    ,
    "kcolorchooser" , "plasmoidviewer" , "Xephyr"    , "kruler"       , "plasmaengineexplorer",
}

-- Ignore the tiled layout for the matching clients
tyrannical.properties.floating = {
    "MPlayer"      , "pinentry"        , "ksnapshot"  , "pinentry"     , "gtksu"          ,
    "xine"         , "feh"             , "kmix"       , "kcalc"        , "xcalc"          ,
    "yakuake"      , "Select Color$"   , "kruler"     , "kcolorchooser", "Paste Special"  ,
    "New Form"     , "Insert Picture"  , "kcharselect", "mythfrontend" , "plasmoidviewer"
}

-- Make the matching clients (by classes) on top of the default layout
tyrannical.properties.ontop = {
    "Xephyr"       , "ksnapshot"       , "kruler"
}

-- Force the matching clients (by classes) to be centered on the screen on init
tyrannical.properties.centered = {
    "kcalc"
}

tyrannical.settings.block_children_focus_stealing = true --Block popups ()
tyrannical.settings.group_children = true --Force popups/dialogs to have the same tags as the parent client
