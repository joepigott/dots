----------------------------
-- Pigroy's awesome theme --
----------------------------

local theme = {}

local shapes = require("gears.shape")
local naughty = require("naughty")
local nconf = naughty.config

theme.font = "JetBrainsMono Bold 12"

--- color scheme ---
theme.bg       = "#1c1b17"
theme.fg       = "#e5e0c9"
theme.red      = "#f26d4f"
theme.lred     = "#d18777"
theme.green    = "#a5dd4f"
theme.lgreen   = "#a0b77c"
theme.yellow   = "#ddc14d"
theme.lyellow  = "#c6b675"
theme.blue     = "#4d8ee2"
theme.lblue    = "#6e8db5"
theme.magenta  = "#b46dce"
theme.lmagenta = "#a589af"
theme.cyan     = "#4bc6c0"
theme.lcyan    = "#80b5b2"
theme.disabled = "#8c8775"

--- general window ---
theme.useless_gap   = 7
theme.border_width  = 2
theme.border_normal = theme.disabled
theme.border_focus  = theme.lgreen

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

--- titlebars ---
theme.titlebar_bg_normal = theme.bg
theme.titlebar_bg_focus = theme.bg
theme.titlebar_fg_normal = theme.fg
theme.titlebar_fg_focus = theme.fg

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

-- notifications --
nconf.defaults.border_width = 2
nconf.defaults.shape = shapes.rounded_rect
nconf.defaults.timeout = 3
nconf.defaults.icon_size = 100
nconf.padding = 15

theme.notification_font = "JetBrainsMono Bold 12"
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
theme.menu_border_color = theme.lcyan
theme.menu_border_width = 2

--- status bar ---
theme.wibar_stretch      = true
theme.wibar_border_width = 7
theme.wibar_border_color = "#00000000"
theme.wibar_ontop        = true
theme.wibar_type         = "dock"
theme.wibar_height       = 15
theme.wibar_bg           = theme.bg
theme.wibar_fg           = theme.fg
theme.wibar_shape        = shapes.rounded_rect

--- wallpaper ---
theme.wallpaper = "/usr/share/backgrounds/phoenix_cream.png"

return theme
