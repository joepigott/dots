pcall(require, "luarocks.loader")

gears = require("gears")
awful = require("awful")
naughty = require("naughty")
beautiful = require("beautiful")

terminal = "cool-retro-term"
editor = "nvim"
editor_cmd = terminal .. " -e " .. editor

modkey = "Mod4"
