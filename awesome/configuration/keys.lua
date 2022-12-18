local awful = require("awful")
local beautiful = require("beautiful")

mod = "Mod4"
alt = "Mod1"
ctrl = "Control"
shift = "Shift"

--- global keys ---
awful.keyboard.append_global_keybindings({
  --- awesome ---
  awful.key({ mod, shift }, "q", awesome.quit),
  awful.key({ mod, shift }, "r", awesome.restart),

  --- navigation ---
  awful.key({ mod }, "j", function() awful.client.focus.byidx(1) end),
  awful.key({ mod }, "k", function() awful.client.focus.byidx(-1) end),
  awful.key({ mod, shift }, "j", function()
    awful.client.swap.byidx(1)
  end),
  awful.key({ mod, shift }, "k", function()
    awful.client.swap.byidx(-1)
  end),
  awful.key({ mod }, "Tab", function()
    awful.client.focus.history.previous()
    if client.focus then
      client.focus:raise()
    end
  end),

  --- apps ---
  awful.key({ mod }, "Return", awful.spawn("kitty")),
  awful.key({ mod }, "b", awful.spawn("firefox")),
  awful.key({ mod }, "r", awful.spawn("rofi -show drun")),
  awful.key({ mod }, "f", awful.spawn("ranger")),

  --- media ---
  awful.key({}, "XF86AudioRaiseVolume", function()
    awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ +2%")
  end),
  awful.key({}, "XF86AudioLowerVolume", function()
    awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ -2%")
  end),
  awful.key({}, "XF86AudioMute", function()
    awful.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle")
  end),
  awful.key({}, "XF86AudioPlay", function()
    awful.spawn("playerctl play-pause")
  end),
  awful.key({}, "XF86AudioNext", function()
    awful.spawn("playerctl next")
  end),
  awful.key({}, "XF86AudioPrev", function()
    awful.spawn("playerctl previous")
  end),

  --- system ---
  awful.key({ mod, shift }, "s", function()
    awful.spawn("shutdown now")
  end),
  awful.key({ mod, shift }, "r", function()
    awful.spawn("reboot")
  end)
})

--- client keys ---
client.connect_signal("request::default_keybindings", function()
  awful.keyboard.append_client_keybindings({
    awful.key({ mod }, "f", function(c)
      c.fullscreen = not c.fullscreen
      c:raise()
    end),
    awful.key({ mod }, "c", function(c)
      c:kill()
    end),
    awful.key({ mod }, "space", awful.client.floating.toggle),
    awful.key({ mod, ctrl }, "Return", function(c)
      c:swap(awful.client.getmaster())
    end),
    awful.key({ mod }, "m", function(c)
      c.maximized = not c.maximized
      c:raise()
    end)
  })
end)

--- tags ---
for i = 1, 9 do
  globalkeys
end
