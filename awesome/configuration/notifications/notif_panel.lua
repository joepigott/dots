local awful = require("awful")
local naughty = require("naughty")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local wibox = require("wibox")

return function (s)
    local notif_list = {
        layout = wibox.layout.fixed.vertical
    }

    table.insert(notif_list, {
        {
            widget = wibox.widget.textbox,
            text = "no notifications"
        },
        widget = wibox.container.place,
        align = "center",
        fill_vertical = true
    })

    local notif_widget =  {
        layout = wibox.layout.fixed.vertical,
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
        notif_list
    }

    s.notification_panel = awful.popup({
        type = "dock",
        screen = s,
        minimum_height = s.geometry.height,
        maximum_height = s.geometry.height,
        minimum_width = dpi(550),
        maximum_width = dpi(550),
        bg = beautiful.bg .. "88",
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
        widget = notif_widget
    })

    naughty.connect_signal("notifs::toggle_panel", function()
        s.notification_panel.visible = not s.notification_panel.visible
    end)

    naughty.connect_signal("added", function(n)
    end)

    naughty.connect_signal("destroyed", function(n)
    end)
end
