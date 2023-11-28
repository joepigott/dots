----------------------------
-- Pigroy's awesome theme --
----------------------------

local theme = {}

local shapes = require("gears.shape")
local naughty = require("naughty")
local nconf = naughty.config

theme.font = "JetBrainsMono NF"

--- color scheme ---
theme.bg       = "#302f29"
theme.fg       = "#e5e0c9"
theme.black    = "#141412"
theme.red      = "#f26d4f"
theme.lred     = "#d18777"
theme.dred     = "#7c5248"
theme.green    = "#a5dd4f"
theme.lgreen   = "#a0b77c"
theme.dgreen   = "#626b55"
theme.yellow   = "#ddc14d"
theme.lyellow  = "#c6b675"
theme.dyellow  = "#7f795f"
theme.blue     = "#4d8ee2"
theme.lblue    = "#6e8db5"
theme.dblue    = "#656d77"
theme.magenta  = "#b46dce"
theme.lmagenta = "#a589af"
theme.dmagenta = "#74657a"
theme.cyan     = "#4bc6c0"
theme.lcyan    = "#80b5b2"
theme.dcyan    = "#5f7776"
theme.disabled = "#8c8775"

theme.alt_bg   = "#1c1d17"

--- general window ---
theme.useless_gap   = 7
theme.border_width  = 2
theme.border_normal = theme.disabled
theme.border_focus  = theme.lgreen

-- notifications --
nconf.defaults.border_width = 2
nconf.defaults.shape = function(cr, w, h) gears.shape.rounded_rect(cr, w, h, 10) end
nconf.defaults.timeout = 3
nconf.defaults.icon_size = 100
nconf.padding = 14

theme.notification_font = "JetBrainsMono Nerd Font Mono Bold 12"
theme.notification_bg = theme.bg
theme.notification_fg = theme.fg
theme.notification_border_color = theme.lyellow
theme.notification_width = 500
theme.notification_margin = 8

--- menu ---
theme.menu_submenu_icon = "~/.config/awesome/theme/submenu.png"
theme.menu_bg_normal = theme.bg
theme.menu_bg_focus  = theme.bg
theme.menu_fg_normal = theme.fg
theme.menu_fg_focus  = theme.fg
theme.menu_border_color = theme.lyellow
theme.menu_border_width = 2

--- status bar ---
theme.wibar_ontop        = true
theme.wibar_type         = "dock"
theme.wibar_bg           = theme.bg
theme.wibar_fg           = theme.fg

--- taglist ---
theme.taglist_spacing = 10
theme.taglist_shape = shapes.circle
theme.taglist_shape_focus = shapes.rounded_bar

--- titlebars ---
theme.titlebar_close_button_normal = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lred)
theme.titlebar_close_button_normal_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.red)
theme.titlebar_close_button_normal_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dred)
theme.titlebar_close_button_focus = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lred)
theme.titlebar_close_button_focus_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.red)
theme.titlebar_close_button_focus_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dred)
theme.titlebar_minimize_button_normal = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lyellow)
theme.titlebar_minimize_button_normal_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.yellow)
theme.titlebar_minimize_button_normal_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dyellow)
theme.titlebar_minimize_button_focus = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lyellow)
theme.titlebar_minimize_button_focus_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.yellow)
theme.titlebar_minimize_button_focus_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dyellow)
theme.titlebar_maximized_button_normal_inactive = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lgreen)
theme.titlebar_maximized_button_normal_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.green)
theme.titlebar_maximized_button_normal_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dgreen)
theme.titlebar_maximized_button_focus_inactive = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lgreen)
theme.titlebar_maximized_button_focus_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.green)
theme.titlebar_maximized_button_focus_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dgreen)
theme.titlebar_maximized_button_normal_active = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.lgreen)
theme.titlebar_maximized_button_normal_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.green)
theme.titlebar_maximized_button_normal_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dgreen)
theme.titlebar_maximized_button_focus_active = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.green)
theme.titlebar_maximized_button_focus_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.green)
theme.titlebar_maximized_button_focus_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dgreen)
theme.titlebar_ontop_button_normal_inactive = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lblue)
theme.titlebar_ontop_button_normal_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.blue)
theme.titlebar_ontop_button_normal_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dblue)
theme.titlebar_ontop_button_focus_inactive = gears.surface.load_from_shape(30, 30, gears.shape.circle, theme.lblue)
theme.titlebar_ontop_button_focus_inactive_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.blue)
theme.titlebar_ontop_button_focus_inactive_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dblue)
theme.titlebar_ontop_button_normal_active = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.lblue)
theme.titlebar_ontop_button_normal_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.blue)
theme.titlebar_ontop_button_normal_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dblue)
theme.titlebar_ontop_button_focus_active = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.blue)
theme.titlebar_ontop_button_focus_active_hover = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.blue)
theme.titlebar_ontop_button_focus_active_press = gears.surface.load_from_shape(70, 30, gears.shape.rounded_bar, theme.dblue)

--- wallpaper ---
theme.wallpaper = "/usr/share/backgrounds/phoenix_dark_1080.png"

return theme
