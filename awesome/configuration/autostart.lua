require("configuration.init")

awful.spawn("picom --experimental-backends")
awful.spawn("xscreensaver --no-splash")

--- daily fortune ---
awful.spawn.with_shell("notify-send \"$(cowsay $(fortune))\" -t 0")
