pcall(require, "luarocks.loader")

gears = require("gears")
awful = require("awful")
naughty = require("naughty")
beautiful = require("beautiful")

terminal = "kitty"
editor = "nvim"
editor_cmd = terminal .. " -e " .. editor

modkey = "Mod4"
