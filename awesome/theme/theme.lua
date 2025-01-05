----------------------------
-- Pigroy's awesome theme --
----------------------------

local theme = {}

local shapes = require("gears.shape")
local naughty = require("naughty")
local nconf = naughty.config

theme.font = "TerminessNerdFont Mono"

--- color scheme ---
theme.bg       = "#130912"
theme.white    = "#e5e9e6"
theme.black    = "#141414"
theme.red      = "#de524a"
theme.lred     = "#ff7162"
theme.green    = "#22d87a"
theme.lgreen   = "#c9ee5e"
theme.yellow   = "#ecc747"
theme.lyellow  = "#edd682"
theme.blue     = "#2366c3"
theme.lblue    = "#7fb4ff"
theme.magenta  = "#9132e8"
theme.lmagenta = "#c17fff"
theme.cyan     = "#55e7f0"
theme.lcyan    = "#a7ecef"
theme.disabled = "#5d5d5d"

theme.alt_bg   = "#141414"
theme.alt_bg2  = "#2f2f2f"

--- general window ---
theme.useless_gap   = 10
theme.border_width  = 2
theme.border_normal = theme.red
theme.border_focus  = theme.cyan

-- notifications --
nconf.defaults.border_width = 2
nconf.defaults.shape = function(cr, w, h) shapes.octogon(cr, w, h, 25) end
nconf.defaults.timeout = 3
nconf.defaults.icon_size = 200
nconf.defaults.margin = 15
nconf.padding = 20

nconf.presets.critical.bg = theme.bg
nconf.presets.critical.fg = theme.white
nconf.presets.critical.border_color = theme.lred

theme.notification_font = "TerminessNerdFont Bold 12"
theme.notification_bg = theme.bg
theme.notification_fg = theme.yellow
theme.notification_border_color = theme.yellow
theme.notification_width = 750

--- status bar ---
theme.wibar_ontop        = true
theme.wibar_type         = "dock"
theme.wibar_bg           = theme.bg
theme.wibar_fg           = theme.red
theme.wibar_border_width = 2
theme.wibar_border_color = theme.red

--- taglist ---
theme.taglist_spacing = 10
theme.taglist_shape = shapes.rectangle
theme.taglist_shape_focus = shapes.rectangle

--- titlebars ---
theme.titlebar_close_button_normal = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lred)
theme.titlebar_close_button_normal_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.red)
theme.titlebar_close_button_normal_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dred)
theme.titlebar_close_button_focus = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lred)
theme.titlebar_close_button_focus_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.red)
theme.titlebar_close_button_focus_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dred)
theme.titlebar_minimize_button_normal = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lyellow)
theme.titlebar_minimize_button_normal_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.yellow)
theme.titlebar_minimize_button_normal_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.yellow)
theme.titlebar_minimize_button_focus = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.yellow)
theme.titlebar_minimize_button_focus_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.yellow)
theme.titlebar_minimize_button_focus_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.yellow)
theme.titlebar_maximized_button_normal_inactive = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lgreen)
theme.titlebar_maximized_button_normal_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.green)
theme.titlebar_maximized_button_normal_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dgreen)
theme.titlebar_maximized_button_focus_inactive = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lgreen)
theme.titlebar_maximized_button_focus_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.green)
theme.titlebar_maximized_button_focus_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dgreen)
theme.titlebar_maximized_button_normal_active = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.lgreen)
theme.titlebar_maximized_button_normal_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.green)
theme.titlebar_maximized_button_normal_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dgreen)
theme.titlebar_maximized_button_focus_active = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.green)
theme.titlebar_maximized_button_focus_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.green)
theme.titlebar_maximized_button_focus_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dgreen)
theme.titlebar_ontop_button_normal_inactive = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lblue)
theme.titlebar_ontop_button_normal_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.blue)
theme.titlebar_ontop_button_normal_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dblue)
theme.titlebar_ontop_button_focus_inactive = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lblue)
theme.titlebar_ontop_button_focus_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.blue)
theme.titlebar_ontop_button_focus_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dblue)
theme.titlebar_ontop_button_normal_active = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.lblue)
theme.titlebar_ontop_button_normal_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.blue)
theme.titlebar_ontop_button_normal_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dblue)
theme.titlebar_ontop_button_focus_active = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.blue)
theme.titlebar_ontop_button_focus_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.blue)
theme.titlebar_ontop_button_focus_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dblue)

--- systray ---
theme.bg_systray = theme.bg
theme.systray_icon_spacing = 10

--- wallpaper ---
theme.wallpaper = "/usr/share/backgrounds/cyberpunk_ui.png"

--- tooltips ---
theme.tooltip_bg = theme.bg
theme.tooltip_fg = theme.lgreen
theme.tooltip_padding = 5
theme.tooltip_border_width = 2
theme.tooltip_border_color = theme.lgreen
return theme
