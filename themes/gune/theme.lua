--[[

     Gune Awesome WM config 2.0
     github.com/copycat-killer

--]]


theme                               = {}

theme.confdir                       = os.getenv("HOME") .. "/.config/awesome/themes/gune"
--theme.wallpaper                     = theme.confdir .. "/wall.png"

theme.font                          = "Inconsolata 13"
theme.taglist_font                  = "Inconsolata 13"
theme.menu_bg_normal                = "#000000"
theme.menu_bg_focus                 = "#000000"
theme.bg_normal                     = "#000000"
theme.bg_focus                      = "#000000"
theme.bg_urgent                     = "#000000"
theme.fg_normal                     = "#aaaaaa"
theme.fg_focus                      = "#f0544c"         --"#ff8c00"
theme.fg_urgent                     = "#af1d18"
theme.fg_minimize                   = "#ffffff"
theme.fg_black                      = "#424242"
theme.fg_red                        = "#ce5666"
theme.fg_green                      = "#80a673"
theme.fg_yellow                     = "#ffaf5f"
theme.fg_blue                       = "#7788af"
theme.fg_magenta                    = "#94738c"
theme.fg_cyan                       = "#778baf"
theme.fg_white                      = "#aaaaaa"
theme.fg_blu                        = "#8ebdde"
theme.border_width                  = "1"
theme.border_focus_width            = "1"
theme.border_normal                 = "#1c2022"
theme.border_focus                  = "#94738c"         --"#606060"
theme.border_marked                 = "#3ca4d8"
theme.menu_width                    = "110"
theme.menu_border_width             = "0"
theme.menu_fg_normal                = "#aaaaaa"
theme.menu_fg_focus                 = "#f0544c"         --"#ff8c00"
theme.menu_bg_normal                = "#050505dd"
theme.menu_bg_focus                 = "#050505dd"

theme.menu_submenu_icon             = theme.confdir .. "/icons/submenu.png"
theme.widget_temp                   = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                 = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                    = theme.confdir .. "/icons/cpu.png"
theme.widget_weather                = theme.confdir .. "/icons/dish.png"
theme.widget_fs                     = theme.confdir .. "/icons/fs.png"
theme.widget_mem                    = theme.confdir .. "/icons/mem.png"
theme.widget_fs                     = theme.confdir .. "/icons/fs.png"
theme.widget_note                   = theme.confdir .. "/icons/note.png"
theme.widget_note_on                = theme.confdir .. "/icons/note_on.png"
theme.widget_netdown                = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                  = theme.confdir .. "/icons/net_up.png"
theme.widget_mail                   = theme.confdir .. "/icons/mail.png"
theme.widget_batt                   = theme.confdir .. "/icons/bat.png"
theme.widget_clock                  = theme.confdir .. "/icons/clock.png"
theme.widget_vol                    = theme.confdir .. "/icons/spkr.png"

theme.taglist_squares_sel           = theme.confdir .. "/icons/square_c.png"
theme.taglist_squares_unsel         = theme.confdir .. "/icons/square_b.png"

theme.tasklist_disable_icon         = true
theme.tasklist_floating             = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

theme.layout_tile                   = theme.confdir .. "/icons/layouts/tile.png"
theme.layout_tilegaps               = theme.confdir .. "/icons/layouts/tilegaps.png"
theme.layout_tileleft               = theme.confdir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom             = theme.confdir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop                = theme.confdir .. "/icons/layouts/tiletop.png"
theme.layout_fairv                  = theme.confdir .. "/icons/layouts/fairv.png"
theme.layout_fairh                  = theme.confdir .. "/icons/layouts/fairh.png"
theme.layout_spiral                 = theme.confdir .. "/icons/layouts/spiral.png"
theme.layout_dwindle                = theme.confdir .. "/icons/layouts/dwindle.png"
theme.layout_max                    = theme.confdir .. "/icons/layouts/max.png"
theme.layout_fullscreen             = theme.confdir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier              = theme.confdir .. "/icons/layouts/magnifier.png"
theme.layout_floating               = theme.confdir .. "/icons/layouts/floating.png"
theme.layout_termfair    	    = theme.confdir .. "/icons/layouts/termfairw.png"
theme.layout_cascade     	    = theme.confdir .. "/icons/layouts/cascadew.png"
theme.layout_cascadetile 	    = theme.confdir .. "/icons/layouts/cascadetilew.png"
theme.layout_centerwork  	    = theme.confdir .. "/icons/layouts/centerworkw.png"
theme.layout_treesome		    = theme.confdir .. "/icons/layouts/treesome.png"

theme.awesome_icon                  = theme.confdir .. "/icons/awesome.png"

return theme
