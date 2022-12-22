----------------------------
-- Pigroy's awesome theme --
----------------------------

local theme = {}

local shapes = require("gears.shape")

theme.font = "FiraCode 24"

--- color scheme ---
theme.bg       = "#17181c"
theme.fg       = "#cecfdf"
theme.red      = "#be2720"
theme.lred     = "#e46c67"
theme.green    = "#67b85d"
theme.lgreen   = "#94dc8b"
theme.yellow   = "#cecd6b"
theme.lyellow  = "#e9e9a3"
theme.blue     = "#237de1"
theme.lblue    = "#7cb1ec"
theme.magenta  = "#936bc8"
theme.lmagenta = "#b99be2"
theme.cyan     = "#29adc2"
theme.lcyan    = "#7cd3e0"
theme.disabled = "#7c7d87"

--- general window ---
theme.useless_gap   = 7
theme.border_width  = 2
theme.border_normal = theme.disabled
theme.border_focus  = theme.lcyan

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
theme.titlebar_bg = theme.bg
theme.titlebar_fg = theme.fg

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

--- menu ---
theme.menu_submenu_icon = "~/.config/awesome/theme/submenu.png"
theme.menu_bg           = theme.bg
theme.menu_fg           = theme.fg
theme.menu_height       = 100
theme.menu_width        = 50

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
theme.wallpaper = "/usr/share/backgrounds/phoenix_wallpaper.png"

return theme
