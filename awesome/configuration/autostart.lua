require("configuration.init")

awful.spawn("compfy")
awful.spawn("xscreensaver --no-splash")
awful.spawn("r-quick-share")

--- daily fortune ---
awful.spawn.with_shell("sleep 1 && notify-send \"$(cowsay $(fortune))\" -t 0")
