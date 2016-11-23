--[[
	bindings/keys.lua

		Keybindings

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]


local awful	= require("awful")
--local drop	= require("scratch.drop")
local keydoc 	= require("keydoc")
local lain	= require("lib.lain")


-- {{{ Key bindings
globalkeys = awful.util.table.join(
    -- {{{ Tags
    keydoc.group("Tags"),
    awful.key({ modkey,           }, "Left",   						awful.tag.viewprev,
                "Tag précédent"),
    awful.key({ modkey,           }, "Right",  						awful.tag.viewnext,
                "Tag suivant"),
    awful.key({ modkey,           }, "F12",     					revelation,
    		"Revelation"),
    awful.key({ modkey,           }, "Down",     					function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "Up",     						function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "Up",     						function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "Down",     					function () awful.tag.incnmaster(-1)      end),
    -- awful.key({ modkey, "Control" }, "h",     					function () awful.tag.incncol( 1)         end),
    -- awful.key({ modkey, "Control" }, "l",     					function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "a",
                      function ()
                                awful.prompt.run({ prompt = "New tag name: " },
                                  mypromptbox[mouse.screen].widget,
                                  function(new_name)
                                      if not new_name or #new_name == 0 then
                                          return
                                      else
                                          props = {selected = true}
                                          if tyrannical.tags_by_name[new_name] then
                                             props = tyrannical.tags_by_name[new_name]
                                          end
                                          t = awful.tag.add(new_name, props)
                                          awful.tag.viewonly(t)
                                      end
                                  end
                                  )
                      end),
    awful.key({ modkey,           }, "d",                 function () awful.tag.delete() end),
    -- }}}


    -- {{{ Clients
    keydoc.group("Clients"),
    awful.key({ modkey,           }, "Tab",
											function ()
												awful.client.focus.byidx( 1)
												if client.focus then client.focus:raise() end
											end,
                "Client suivant"),
    awful.key({ modkey, "Shift"   }, "Tab",
											function ()
												awful.client.focus.byidx(-1)
												if client.focus then client.focus:raise() end
											end,
              	"Client précédent"),


    -- {{{ Screen
    keydoc.group("Écran"),
    awful.key({ modkey, "Control" }, "j",						function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k",						function () awful.screen.focus_relative(-1) end),
    -- }}}


    -- {{{ Applications
    keydoc.group("Applications"),
    awful.key({ modkey,           }, "t",               			function () awful.util.spawn(terminal) end,
              	"Ouvrir un terminal"),
    awful.key({ modkey,           }, "e",               			function () awful.util.spawn(filemanager) end,
              	"Ouvrir le gestionnaire de fichiers"),
    -- Screenshot
    awful.key({ 	          }, "Print",	  					          function () os.execute("scrot -e 'mv $f ~/Images/screenshots/'") end,
                "Copie d'écran"),
    awful.key({ modkey,           }, "Print",	  		    			function () os.execute("scrot -u -e 'mv $f ~/Images/screenshots/'") end,
                "Copie de la fenêtre courante"),
    -- Apprunner
    -- Run or raise applications with rofi
    awful.key({ modkey,           }, "space",						      function () awful.util.spawn_with_shell(apprunner) end,
 		"Rofi !!!"),
    -- Conky
    -- awful.key({		  }, "F10",						function() raise_conky() end, function() lower_conky_delayed() end,
    -- 	   "Afficher Conky"),
    -- }}}


    -- Widgets popups
    keydoc.group("Widgets"),
    -- awful.key({ modkey,           }, "F12", 				     		mpdwidget.display,
    -- 		   "À l'écoute ?"),
    -- KeyDoc
    awful.key({ modkey            }, "F11",						keydoc.display,
		"De l'aide ?" ),
    -- Pomodoro
    awful.key({ modkey            }, "p",						function () pomodoro:toggle() end,
		"Lancer un Pomodoro" ),
    awful.key({ modkey, "Shift"   }, "p",						function () pomodoro:finish() end,
		"Mettre en pause le Pomodoro" ),
    -- awful.key({ altkey,           }, "c",      					function () lain.widgets.calendar:show(7) end,
    --     "Calendrier"),
    -- awful.key({ altkey,           }, "s", 				     		function () fswidget.show(7) end,
    --     "Espace disque"),
    -- awful.key({ altkey,           }, "m",  				    		function () myweather.show(7) end,
    --     "Météo"),
    -- awful.key({ altkey,	     }, "b",						function () mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible end,
    --     "Widgets (in)visible"),
    -- }}}


    -- {{{ Awesome
    keydoc.group("Awesome"),
    awful.key({ modkey, "Control" }, "r",						awesome.restart,
              	"Recharger configuration" ),
    awful.key({ modkey, "Control" }, "q",						awesome.quit,
              	"Déconnexion" ),
    -- Prompt
    -- awful.key({ modkey,           }, "r",   						function () mypromptbox[mouse.screen]:run() end,
    --           	"Éxécuter l'application..."),
    awful.key({ modkey,           }, "x",
											function ()
												awful.prompt.run({ prompt = "Run Lua code: " },
												mypromptbox[mouse.screen].widget,
												awful.util.eval, nil,
												awful.util.getdir("cache") .. "/history_eval")
											end,
         	"Éxécuter du code Lua" ),
    awful.key({ modkey,           }, "m",						function () mymainmenu:show({ keygrabber = true }) end,
              	"Afficher menu principal" ),
    -- }}}


    -- {{{ Layouts
    keydoc.group("Layouts"),
    awful.key({ modkey,           }, "/", 						function () awful.layout.inc(layouts,  1) end,
                "Layout suivant" ),
    awful.key({ modkey,           }, "\\", 						function () awful.layout.inc(layouts, -1) end,
                "Layout précédent" ),
    -- }}}


    -- {{{ Multimédia keys
    keydoc.group("Multimédia"),
    awful.key({              }, "XF86AudioRaiseVolume", 				function () volumecfg.up() end,
    	        "Aug. le volume" ),
    awful.key({              }, "XF86AudioLowerVolume", 				function () volumecfg.down() end,
    		"Dim. le volume" ),
    awful.key({              }, "XF86AudioMute",	                	        function () volumecfg.toggle() end,
    		"Silence" ),

    awful.key({              }, "XF86AudioPlay",					function ()
											        awful.util.spawn_with_shell("mpc toggle || ncmpcpp toggle || ncmpc toggle || pms toggle")
												mpdwidget.update()
											end,
		"Jouer" ),

    awful.key({              }, "XF86AudioPrev",
											function ()
												awful.util.spawn_with_shell("mpc prev || ncmpcpp prev || ncmpc prev || pms prev")
												mpdwidget.update()
											end,
		"Piste préc." ),
    awful.key({               }, "XF86AudioNext",
											function ()
												awful.util.spawn_with_shell("mpc next || ncmpcpp next || ncmpc next || pms next")
												mpdwidget.update()
											end,
		"Piste suiv." )
    -- }}}

    -- {{{ Autres
    -- Run or raise applications with dmenu
    -- awful.key({ modkey,           }, "space",
    --     function ()
    --       local f_reader = io.popen(
    --             "dmenu_path | dmenu -b" ..
    --             " -p '>'" ..
    --             " -dim '0.5'" ..
    --             " -r" ..
    --             " -nb '" .. beautiful.bg_normal ..
    --             "' -nf '" .. beautiful.fg_normal ..
    --             "' -sb '" .. beautiful.bg_normal ..
    --             "' -sf '" .. beautiful.fg_focus ..
    --             "' -fn 'Roboto-10' -h '24'")
    --       local command = assert(f_reader:read('*a'))
    --       f_reader:close()
    --       if command == "" then return end

    --       -- Check throught the clients if the class match the command
    --       local lower_command=string.lower(command)
    --       for k, c in pairs(client.get()) do
    --           local class=string.lower(c.class)
    --           if string.match(class, lower_command) then
    --               for i, v in ipairs(c:tags()) do
    --                   awful.tag.viewonly(v)
    --                   c:raise()
    --                   c.minimized = false
    --                   return
    --               end
    --           end
    --       end
    --       awful.util.spawn(command)
    -- end),
    -- -- Run or raise applications with dmenu with elevated privileges
    -- awful.key({ modkey, "Shift"   }, "space",
    --     function ()
    --       local f_reader = io.popen(
    --             "dmenu_path | dmenu -b" ..
    --             " -p '>'" ..
    --             " -dim '0.5'" ..
    --             " -r" ..
    --             " -nb '" .. beautiful.bg_urgent ..
    --             "' -nf '" .. beautiful.fg_urgent ..
    --             "' -sb '" .. beautiful.bg_normal ..
    --             "' -sf '" .. beautiful.fg_yellow ..
    --             "' -fn 'Roboto-10' -h '24'")
    --       local command = assert(f_reader:read('*a'))
    --       f_reader:close()
    --       if command == "" then return end
    --       awful.util.spawn("gksudo " .. command)
    -- end),

    -- }}}
)


clientkeys = awful.util.table.join(
    -- {{{ Clients
    keydoc.group("Clients"),
    awful.key({ modkey, "Control" }, "f",  					        function (c) c.fullscreen = not c.fullscreen  end,
              	"Plein écran" ),
    awful.key({ altkey,           }, "F4",      					function (c) c:kill()  end,
              	"Fermer/Quitter" ),
    awful.key({ modkey, "Control" }, "space",  						awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", 						function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "Up", 		     				function (c) c.ontop = not c.ontop            end,
              	"Mettre au 1er plan" ),

    -- awful.key({ modkey, "Shift"   }, "Home",
    -- 											function (c)
    -- 											-- The client currently has the input focus, so it cannot be
    -- 											-- minimized, since minimized clients can't have the focus.
    -- 												c.minimized = true
    -- 											end,
    --   "Minimiser"),
    awful.key({ modkey,           }, "Home",
											function (c)
												c.maximized_horizontal = not c.maximized_horizontal
												c.maximized_vertical   = not c.maximized_vertical
											end,
              	"Maximiser" ),
    -- awful.key({ modkey, "Shift"   }, "t",						awful.titlebar.toggle,
    --     "Afficher barre de titre"),

    -- DRAG WINDOW TO WORKSPACE
    awful.key({ modkey, "Shift"   }, "Left",
											function (c)
												local curidx = awful.tag.getidx()
												if curidx == 1 then
													awful.client.movetotag(tags[client.focus.screen][#tags[client.focus.screen]])
												else
													awful.client.movetotag(tags[client.focus.screen][curidx - 1])
												end
												awful.tag.viewidx(-1)
											end,
              	"Déplacer dans le tag précédent" ),

    awful.key({ modkey, "Shift"   }, "Right",
											function (c)
												local curidx = awful.tag.getidx()
												if curidx == #tags[client.focus.screen] then
													awful.client.movetotag(tags[client.focus.screen][1])
												else
													awful.client.movetotag(tags[client.focus.screen][curidx + 1])
												end
												awful.tag.viewidx(1)
											end,
              	"Déplacer dans le tag suivant" )
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = awful.util.table.join(globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        local tag = awful.tag.gettags(screen)[i]
                        if tag then
                           awful.tag.viewonly(tag)
                        end
                  end),
        -- Toggle tag.
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      local tag = awful.tag.gettags(screen)[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        -- Move client to tag.
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = awful.tag.gettags(client.focus.screen)[i]
                          if tag then
                              awful.client.movetotag(tag)
                          end
                     end
                  end),
        -- Toggle tag.
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = awful.tag.gettags(client.focus.screen)[i]
                          if tag then
                              awful.client.toggletag(tag)
                          end
                      end
                  end)
	)
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ }, 2, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize)
)

-- }}}
