require("configuration.init")

awful.spawn("ssh-agent > /dev/null")
awful.spawn("picom")
awful.spawn("light-locker --lock-on-lid")
awful.spawn("blueman-applet")

--- daily fortune ---
awful.spawn.easy_async_with_shell("sleep 1 && notify-send \"$(cowsay $(fortune))\" -t 0")
