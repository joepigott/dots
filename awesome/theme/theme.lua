----------------------------
-- Pigroy's awesome theme --
----------------------------

local theme = {}

local shapes = require("gears.shape")
local naughty = require("naughty")
local nconf = naughty.config

theme.font = "Terminus (TTF)"

--- color scheme ---
theme.bg       = "#171717"
theme.fg       = "#f2f2f2"
theme.black    = "#141414"
theme.red      = "#e68a8a"
theme.lred     = "#f2b1b1"
theme.dred     = "#7c5248"
theme.green    = "#99cc99"
theme.lgreen   = "#b2d8b2"
theme.dgreen   = "#626b55"
theme.yellow   = "#fad7a0"
theme.lyellow  = "#f7dcb4"
theme.dyellow  = "#7f795f"
theme.blue     = "#6699cc"
theme.lblue    = "#87cefa"
theme.dblue    = "#656d77"
theme.magenta  = "#c8a2c8"
theme.lmagenta = "#d8bfd8"
theme.dmagenta = "#74657a"
theme.cyan     = "#6fc3b2"
theme.lcyan    = "#64dbdb"
theme.dcyan    = "#5f7776"
theme.disabled = "#5d5d5d"

theme.alt_bg   = "#141414"

--- general window ---
theme.useless_gap   = 7
theme.border_width  = 2
theme.border_normal = theme.disabled
theme.border_focus  = theme.lyellow

-- notifications --
nconf.defaults.border_width = 2
nconf.defaults.shape = gears.shape.rectangle
nconf.defaults.timeout = 3
nconf.defaults.icon_size = 100
nconf.padding = 14

theme.notification_font = "Terminus (TTF) Bold 16"
theme.notification_bg = theme.bg
theme.notification_fg = theme.fg
theme.notification_border_color = theme.lgreen
theme.notification_width = 500
theme.notification_margin = 8

--- status bar ---
theme.wibar_ontop        = true
theme.wibar_type         = "dock"
theme.wibar_bg           = theme.bg
theme.wibar_fg           = theme.fg

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
theme.titlebar_minimize_button_normal_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dyellow)
theme.titlebar_minimize_button_focus = gears.surface.load_from_shape(30, 30, gears.shape.rectangle, theme.lyellow)
theme.titlebar_minimize_button_focus_hover = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.yellow)
theme.titlebar_minimize_button_focus_press = gears.surface.load_from_shape(70, 30, gears.shape.rectangle, theme.dyellow)
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
theme.wallpaper = "/usr/share/backgrounds/mandelbrot_1080.png"

return theme
