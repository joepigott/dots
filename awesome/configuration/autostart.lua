require("configuration.init")

awful.spawn("picom --experimental-backends")

--- daily fortune ---
awful.spawn.with_shell("notify-send \"$(cowsay $(fortune))\" -t 0")
