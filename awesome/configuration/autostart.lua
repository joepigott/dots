require("configuration.init")

awful.spawn("picom")
awful.spawn("polybar complete")
awful.spawn("dunst")
awful.spawn("xscreensaver --no-splash")
