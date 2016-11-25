--[[
	settings/wibox.lua

		Wibox definition

		Jeff LANCE <jeff.lance@mala.fr>
		11/05/2014
--]]


local awful = require("awful")
local wibox = require("wibox")
local lain = require("lain")
local beautiful = require("beautiful")
local awmodoro = require("plugins.awmodoro")


-- {{{ Wibox
markup = lain.util.markup

-- Textclock
clockicon = wibox.widget.imagebox(beautiful.widget_clock)
mytextclock = awful.widget.textclock(markup("#7788af", "%A %d %B ") .. markup("#343639", ">") .. markup("#de5e1e", " %H:%M "))

-- Calendar
lain.widgets.calendar:attach(mytextclock, { font_size = 10 })

-- Weather
weathericon = wibox.widget.imagebox(beautiful.widget_weather)
myweather = lain.widgets.weather({
    city_id = 2995121,
    lang = fr,
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup("#eca4c4", descr .. " @ " .. units .. "°C "))
    end
})

-- / fs
fsicon = wibox.widget.imagebox(beautiful.widget_fs)
fswidget = lain.widgets.fs({
    partition = "/home",
    settings  = function()
        widget:set_markup(markup("#80d9d8", "Home " .. fs_now.used .. "% "))
    end
})

--[[ Mail IMAP check
-- commented because it needs to be set before use
mailicon = wibox.widget.imagebox()
mailicon:buttons(awful.util.table.join(awful.button({ }, 1, function () awful.util.spawn(mail) end)))
mailwidget = lain.widgets.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            mailicon:set_image(beautiful.widget_mail)
            widget:set_markup(markup("#cccccc", mailcount .. " "))
        else
            widget:set_text("")
            mailicon:set_image(nil)
        end
    end
})
]]

-- CPU
cpuicon = wibox.widget.imagebox()
cpuicon:set_image(beautiful.widget_cpu)
cpuwidget = lain.widgets.cpu({
    settings = function()
        widget:set_markup(markup("#e33a6e", cpu_now.usage .. "% "))
    end
})

-- Coretemp
tempicon = wibox.widget.imagebox(beautiful.widget_temp)
tempwidget = lain.widgets.temp({
    settings = function()
        widget:set_markup(markup("#f1af5f", coretemp_now .. "°C "))
    end
})

-- Battery
-- baticon = wibox.widget.imagebox(beautiful.widget_batt)
-- batwidget = lain.widgets.bat({
--     settings = function()
--         if bat_now.perc == "N/A" then
--             bat_now.perc = "AC "
--         else
--             bat_now.perc = bat_now.perc .. "% "
--         end
--         widget:set_text(bat_now.perc)
--     end
-- })

-- ALSA volume
-- volicon = wibox.widget.imagebox(beautiful.widget_vol)
-- volumewidget = lain.widgets.alsa({
--     settings = function()
--         if volume_now.status == "off" then
--             volume_now.level = volume_now.level .. "M"
--         end
--         widget:set_markup(markup("#7493d2", volume_now.level .. "% "))
--     end
-- })

-- Net
netdownicon = wibox.widget.imagebox(beautiful.widget_netdown)
--netdownicon.align = "middle"
netdowninfo = wibox.widget.textbox()
netupicon = wibox.widget.imagebox(beautiful.widget_netup)
--netupicon.align = "middle"
netupinfo = lain.widgets.net({
    settings = function()
        widget:set_markup(markup("#e54c62", net_now.sent .. " "))
        netdowninfo:set_markup(markup("#87af5f", net_now.received .. " "))
    end
})

-- MEM
memicon = wibox.widget.imagebox(beautiful.widget_mem)
memwidget = lain.widgets.mem({
    settings = function()
        widget:set_markup(markup("#e0da37", mem_now.used .. "M "))
    end
})

-- MPD
mpdicon = wibox.widget.imagebox()
mpdwidget = lain.widgets.mpd({
    music_dir = "/mnt/mores/musique",
    cover_size = 200,
    settings = function()
      mpd_notification_preset = {
	    timeout = 15,
            text = string.format("%s [%s] - %s\n%s", mpd_now.artist,
                   mpd_now.album, mpd_now.date, mpd_now.title)
        }

        if mpd_now.state == "play" then
            artist = mpd_now.artist .. " > "
            title  = mpd_now.title .. " "
            mpdicon:set_image(beautiful.widget_note_on)
        elseif mpd_now.state == "pause" then
            artist = "mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(nil)
        end
        widget:set_markup(markup("#e54c62", artist) .. markup("#e54c62", title))
    end
})

-- Pomodoro
pomowibox = awful.wibox({ position = "top", screen = 1, height=4})
pomowibox.visible = false
pomodoro = awmodoro.new({
  minutes 			= 25,
  do_notify 			= true,
  active_bg_color 	= '#313131',
  paused_bg_color 	= '#7746D7',
  fg_color			= {type = "linear", from = {0,0}, to = {pomowibox.width, 0}, stops = {{0, "#AECF96"},{0.5, "#88A175"},{1, "#FF5656"}}},
  width 				= pomowibox.width,
  height 				= pomowibox.height,

  begin_callback = function()
    for s = 1, screen.count() do
      mywibox[s].visible = true
    end
    pomowibox.visible = true
  end,

  finish_callback = function()
    for s = 1, screen.count() do
      mywibox[s].visible = true
    end
    pomowibox.visible = false
  end
})

-- -- Taskwarrior
-- taskswidget = widget({type = "textbox"})
-- taskswidget.text = get_duetask();
-- taskswidget = {}
-- taskswidget.buttons = awful.util.table.join(
--                       awful.button({ }, 1, function() taskswidget.text = next_duetask() end),
--                       awful.button({ }, 3, function() taskswidget.text = prev_duetask() end)
--                       )
-- add_tasklist()

-- Spacer
spacer1 = wibox.widget.textbox("      ")

-- }}}

-- {{{ Layout
-- Create a wibox for each screen and add it
mywibox = {}
mybottomwibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
                    )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  -- Without this, the following
                                                  -- :isvisible() makes no sense
                                                  c.minimized = false
                                                  if not c:isvisible() then
                                                      awful.tag.viewonly(c:tags()[1])
                                                  end
                                                  -- This will also un-minimize
                                                  -- the client, if needed
                                                  client.focus = c
                                                  c:raise()
                                              end
                                          end),
                     awful.button({ }, 3, function ()
                                              if instance then
                                                  instance:hide()
                                                  instance = nil
                                              else
                                                  instance = awful.menu.clients({ width=250 })
                                              end
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                              if client.focus then client.focus:raise() end
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                              if client.focus then client.focus:raise() end
                                          end))

for s = 1, screen.count() do

    -- Create a promptbox for each screen
    mypromptbox[s] = awful.widget.prompt()

    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
                            awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                            awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                            awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                            awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))

    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, mytasklist.buttons)

    -- Create the upper wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s, height = 26,
    border_width = 0, height =  26 })

    -- Widgets that are aligned to the upper left
    local left_layout = wibox.layout.fixed.horizontal()
    -- mainmenu
    left_layout:add(mylauncher)

    -- tags
    left_layout:add(spacer1)
    left_layout:add(mytaglist[s])

    -- run command
    left_layout:add(spacer1)
    left_layout:add(mypromptbox[s])

    -- mpd infos
    left_layout:add(spacer1)
    left_layout:add(mpdicon)
    left_layout:add(mpdwidget)

    -- Widgets that are aligned to the upper right
    local right_layout = wibox.layout.fixed.horizontal()
    --if s == 1 then right_layout:add(wibox.widget.systray()) end
    -- mail infos
    --right_layout:add(mailicon)
    --right_layout:add(mailwidget)

    -- volume infos
    right_layout:add(volicon)
    right_layout:add(volumecfg_widget)
    right_layout:add(spacer1)

    -- net infos
    --right_layout:add(netdownicon)
    --right_layout:add(netdowninfo)
    --right_layout:add(netupicon)
    --right_layout:add(netupinfo)

    -- system infos
    right_layout:add(memicon)
    right_layout:add(memwidget)
    right_layout:add(cpuicon)
    right_layout:add(cpuwidget)
    right_layout:add(fsicon)
    right_layout:add(fswidget)

    -- weather infos
    left_layout:add(spacer1)
    right_layout:add(weathericon)
    right_layout:add(myweather)
    --right_layout:add(tempicon)
    --right_layout:add(tempwidget)

    -- battery infos
    -- right_layout:add(baticon)
    -- right_layout:add(batwidget)

    -- time infos
    right_layout:add(clockicon)
    right_layout:add(mytextclock)

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    --layout:set_middle(mytasklist[s])
    layout:set_right(right_layout)
    mywibox[s]:set_widget(layout)

    -- Put Pomodoro timer
    pomowibox:set_widget(pomodoro)


    -- Create the bottom wibox
    mybottomwibox[s] = awful.wibox({ position = "bottom", screen = s, border_width = 0, height = 24 })
    --mybottomwibox[s].visible = false

    -- Widgets that are aligned to the bottom left
    bottom_left_layout = wibox.layout.fixed.horizontal()
    bottom_left_layout:add(mylayoutbox[s])

    -- Widgets that are aligned to the bottom right
    bottom_right_layout = wibox.layout.fixed.horizontal()
    if s == 1 then bottom_right_layout:add(wibox.widget.systray()) end
    --bottom_right_layout:add(mylayoutbox[s])

    -- Now bring it all together (with the tasklist in the middle)
    bottom_layout = wibox.layout.align.horizontal()
    bottom_layout:set_left(bottom_left_layout)
    bottom_layout:set_middle(mytasklist[s])
    bottom_layout:set_right(bottom_right_layout)
    mybottomwibox[s]:set_widget(bottom_layout)
end
-- }}}
