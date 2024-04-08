local awful = require("awful")
local naughty = require("naughty")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local wibox = require("wibox")

return function (s)
    s.notification_panel = awful.popup({
        type = "dock",
        screen = s,
        minimum_height = s.geometry.height,
        maximum_height = s.geometry.height,
        minimum_width = dpi(550),
        maximum_width = dpi(550),
        bg = beautiful.bg .. "aa",
        border_width = beautiful.border_width,
        border_color = beautiful.lgreen,
        ontop = true,
        visible = false,
        placement = function(w)
            awful.placement.top_right(w)
            awful.placement.maximize_vertically(
                w,
                {honor_workarea = true, margins = 2 * beautiful.useless_gap}
            )
        end,
        widget = {
            {
                {
                    {
                        text = "notifications",
                        font = beautiful.font .. " Bold 18",
                        widget = wibox.widget.textbox
                    },
                    align = "center",
                    widget = wibox.container.place
                },
                top = 15,
                widget = wibox.container.margin
            },
            -- {
            --     base_layout = wibox.widget {
            --         forced_height = 30,
            --         spacing       = 3,
            --         layout        = wibox.layout.fixed.vertical
            --     },
            --     widget_template = {
            --         {
            --             naughty.widget.icon,
            --             {
            --                 naughty.widget.title,
            --                 naughty.widget.message,
            --                 {
            --                     layout = wibox.widget {
            --                         -- Adding the wibox.widget allows to share a
            --                         -- single instance for all spacers.
            --                         spacing_widget = wibox.widget {
            --                             orientation = "horizontal",
            --                             span_ratio  = 0.9,
            --                             widget      = wibox.widget.separator,
            --                         },
            --                         spacing = 3,
            --                         layout  = wibox.layout.flex.vertical
            --                     },
            --                     widget = naughty.list.widgets,
            --                 },
            --                 layout = wibox.layout.align.horizontal
            --             },
            --             spacing = 10,
            --             fill_space = true,
            --             layout  = wibox.layout.fixed.vertical
            --         },
            --         margins = 5,
            --         widget  = wibox.container.margin
            --     },
            --     widget = naughty.list.notifications,
            -- },
            -- -- Add a button to dismiss all notifications, because why not.
            -- {
            --     {
            --         markup = "<span color = '" .. beautiful.bg .. "'>dismiss all</span>",
            --         font = beautiful.font .. " Bold 14",
            --         halign = "center",
            --         valign = "center",
            --         widget = wibox.widget.textbox
            --     },
            --     buttons = gears.table.join(
            --         awful.button({ }, 1, function() naughty.destroy_all_notifications() end)
            --     ),
            --     bg = beautiful.lgreen,
            --     forced_height = dpi(30),
            --     widget = wibox.container.background
            -- },
            -- layout = wibox.layout.align.vertical
        }
    })

    awesome.connect_signal("notifs::toggle_panel", function()
        s.notification_panel.visible = not s.notification_panel.visible
    end)
end
