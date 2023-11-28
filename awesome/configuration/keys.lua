require("configuration.init")
require("configuration.menu")

--- mouse ---
root.buttons(gears.table.join(
    awful.button({ }, 3, function() mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))

--- global ---
globalkeys = gears.table.join(
    --- tag and window stuff ---
    awful.key({ modkey }, "Left", awful.tag.viewprev),
    awful.key({ modkey }, "Right", awful.tag.viewnext),
    awful.key({ modkey }, "Escape", awful.tag.history.restore),
    awful.key({ modkey }, "j", function()
        awful.client.focus.byidx(1)
    end),
    awful.key({ modkey }, "k", function()
        awful.client.focus.byidx(-1)
    end),
    awful.key({ modkey, "Shift" }, "j", function()
        awful.client.swap.byidx(1)
    end),
    awful.key({ modkey, "Shift" }, "k", function()
        awful.client.swap.byidx(-1)
    end),
    awful.key({ modkey }, "Tab", function()
        awful.client.focus.history.previous()
        if client.focus then
            client.focus:raise()
        end
    end),
    
    --- system controls ---
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift" }, "q", awesome.quit),
    awful.key({ modkey, "Shift" }, "s", function() awful.util.spawn("shutdown now") end),
    awful.key({ modkey, "Shift" }, "r", function() awful.util.spawn("reboot") end),
    
    --- appplications ---
    awful.key({ modkey }, "Return", function() awful.spawn(terminal) end),
    awful.key({ modkey }, "r", function() awful.util.spawn("rofi -show drun") end),
    awful.key({ modkey }, "w", function() awful.util.spawn("rofi -show window") end),
    awful.key({ modkey }, "b", function() awful.util.spawn("waterfox") end),
    awful.key({ modkey }, "t", function() awful.util.spawn("telegram-desktop") end),
    awful.key({ modkey }, "d", function() awful.util.spawn("discord") end),
    awful.key({ modkey }, "z", function() awful.util.spawn("zathura") end),

    --- media ---
    awful.key({}, "XF86AudioRaiseVolume", function() 
        awful.util.spawn("pactl set-sink-volume @DEFAULT_SINK@ +2%") 
    end),
    awful.key({}, "XF86AudioLowerVolume", function()
        awful.util.spawn("pactl set-sink-volume @DEFAULT_SINK@ -2%") 
    end),
    awful.key({}, "XF86AudioMute", function()
        awful.util.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle") 
    end),
    awful.key({}, "XF86AudioPlay", function()
        awful.util.spawn("playerctl play-pause") 
    end),
    awful.key({}, "XF86AudioNext", function()
        awful.util.spawn("playerctl next") 
    end),
    awful.key({}, "XF86AudioPrev", function() 
        awful.util.spawn("playerctl previous") 
    end)
)

--- client keys ---
clientkeys = gears.table.join(
    awful.key({ modkey }, "f", function(c)
        c.fullscreen = not c.fullscreen
        c:raise()
    end),
    awful.key({ modkey }, "c", function(c) c:kill() end),
    awful.key({ modkey }, "space", awful.client.floating.toggle),
    awful.key({ modkey, "Control" }, "Return", function(c)
        c:swap(awful.client.getmaster())
    end),
    awful.key({ modkey }, "o", function(c) c:move_to_screen() end),
    awful.key({ modkey }, "t", function(c) c.ontop = not c.ontop end),
    awful.key({ modkey }, "m", function(c)
        c.maximized = not c.maximized
        c:raise()
    end),
    awful.key({ modkey, "Control" }, "m", function(c)
        c.maximized_vertical = not c.maximized_vertical
        c:raise()
    end),
    awful.key({ modkey, "Shift" }, "m", function(c)
        c.maximized_horizontal = not c.maximized_horizontal
        c:raise()
    end),
    awful.key({ modkey }, "p", function(c)
        c.ontop = not c.ontop
        c:raise()
    end)
)

for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9, function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                tag:view_only()
            end
        end),
        awful.key({ modkey, "Control" }, "#" .. i + 9, function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                awful.tag.viewtoggle(tag)
            end
        end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
            if client.focus then
                local tag = client.focus.screen.tags[i]
                if tag then
                    client.focus:move_to_tag(tag)
                end
            end
        end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
            if client.focus then
                local tag = client.focus.screen.tags[i]
                if tag then
                    client.focus:toggle_tag(tag)
                end
            end
        end)
    )
end

clientbuttons = gears.table.join(
    awful.button({ }, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ modkey }, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function(c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)

--- set keys ---
root.keys(globalkeys)
