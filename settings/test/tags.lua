--[[
	settings/tags.lua

		Layout and tags definition

		Jeff LANCE <jeff.lance@mala.fr>
		20/11/2016
--]]


local awful = require("awful")
local lain = require("lain")
local tyrannical = require("lib.tyrannical")


tyrannical.tags = {
    {
        name        = "",
        init        = true,
        exclusive   = true,
        screen      = 1,
        layout      = awful.layout.suit.tile,
        exec_once   = {filemanager}, --When the tag is accessed for the first time, execute this command
        class  = {
            "Thunar"  , "Konqueror" , "Dolphin" , "pcmanfm" , "Nautilus"
        }
    } ,
    {
        name        = "",
        init        = true,
        exclusive   = true,
      --icon        = "~net.png",                 -- Use this icon for the tag (uncomment with a real path)
        screen      = screen.count()>1 and 2 or 1,-- Setup on screen 2 if there is more than 1 screen, else on screen 1
        layout      = awful.layout.suit.max,      -- Use the max layout
        class = {
            "Opera" , "Firefox"  , "Rekonq"  , "Dillo" ,
            "Arora" , "Chromium" , "nightly" , "minefield"
        }
    } ,
    {
        name        = "",
        init        = true,
        exclusive   = true,
        screen      = 1,
        layout      = awful.layout.suit.max,
        class ={
            "Atom"  , "Kate"    , "KDevelop"  , "Codeblocks"  , "Code::Blocks"  ,
            "DDD"   , "kate4"
        }
    } ,
		{
				name        = "",                   -- "Term" logo
				init        = true,                   -- Load the tag on startup
				exclusive   = true,                   -- Refuse any other type of clients (by classes)
				screen      = {1,2},                  -- Create this tag on screen 1 and screen 2
				layout      = lain.layout.centerfair, -- Use the tile layout
				instance    = {"dev", "ops"},         -- Accept the following instances. This takes precedence over 'class'
				class       = { --Accept the following classes, refuse everything else (because of "exclusive=true")
						"lxterminal"  , "Lxterminal"  , "xterm"   , "urxvt"       , "aterm" ,
            "URxvt"       , "XTerm"       , "konsole" , "terminator"  ,"gnome-terminal"
				}
		} ,
    {
				name        = "",                   -- "Steam" logo
				init        = true,                   -- Load the tag on startup
				exclusive   = true,                   -- Refuse any other type of clients (by classes)
				screen      = {1,2},                  -- Create this tag on screen 1 and screen 2
				layout      = awful.layout.suit.max, -- Use the tile layout
				instance    = {"steam"},         -- Accept the following instances. This takes precedence over 'class'
				class       = { --Accept the following classes, refuse everything else (because of "exclusive=true")
						"Steam"
				}
		} ,
    {
				name        = "",                   -- "Game" logo
				init        = true,                   -- Load the tag on startup
				exclusive   = true,                   -- Refuse any other type of clients (by classes)
				screen      = {1,2},                  -- Create this tag on screen 1 and screen 2
				layout      = awful.layout.suit.max, -- Use the tile layout
				instance    = {"game"},         -- Accept the following instances. This takes precedence over 'class'
				class       = { --Accept the following classes, refuse everything else (because of "exclusive=true")
						"EoCApp"  , "witcher2"
				}
		}
}

-- Ignore the tag "exclusive" property for the following clients (matched by classes)
tyrannical.properties.intrusive = {
    "gpick"       , "gpicview"        , "feh"     , "geeqie"      , "qtqr"      ,
    "simple-scan" , "iscan"           , "mtpaint" , "galculator"  , "xcalc"     ,
    "gucharmap"   , "file-roller"     , "clipit"  , "gpa"         , "keepassx"  ,
    "leafpad"     , "seahorse"        , "nitrogen", "xpad"        , "menulibre" ,
    "display-im6" , "display-im6-q16" , "Xephyr"  , "seafile"     , "pidgin"    ,
    "baobab"      ,
}

-- Ignore the tiled layout for the matching clients
tyrannical.properties.floating = {
    "gpick"       , "gpicview"        , "feh"     , "geeqie"      , "qtqr"      ,
    "simple-scan" , "iscan"           , "mtpaint" , "galculator"  , "xcalc"     ,
    "gucharmap"   , "file-roller"     , "clipit"  , "gpa"         , "keepassx"  ,
    "leafpad"     , "seahorse"        , "nitrogen", "xpad"        , "menulibre" ,
    "display-im6" , "display-im6-q16" , "Xephyr"  , "seafile"     , "pidgin"    ,
    "baobab"
}

-- Make the matching clients (by classes) on top of the default layout
tyrannical.properties.ontop = {
    "gpick"       , "gpicview"        , "feh"     , "geeqie"      , "qtqr"      ,
    "simple-scan" , "iscan"           , "mtpaint" , "galculator"  , "xcalc"     ,
    "gucharmap"   , "file-roller"     , "gpa"     , "keepassx"    , "leafpad"   ,
    "seahorse"    , "nitrogen"        , "xpad"    , "Xephyr"      , "seafile"   ,
    "pidgin"
}

-- Force the matching clients (by classes) to be centered on the screen on init
tyrannical.properties.centered = {
    "galculator"  , "xcalc"
}

tyrannical.settings.block_children_focus_stealing = true --Block popups ()
tyrannical.settings.group_children = true --Force popups/dialogs to have the same tags as the parent client
