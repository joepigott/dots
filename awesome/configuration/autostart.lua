require("configuration.init")

awful.spawn("picom")
awful.spawn("polybar complete")
awful.spawn("dunst")
awful.spawn("xscreensaver --no-splash")

-- daily fortune --
awful.spawn.with_shell("notify-send \"$(cowsay $(fortune))\"")
