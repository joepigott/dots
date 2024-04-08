local awful = require("awful")
local naughty = require("naughty")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local wibox = require("wibox")

local active_notif_num = function()
    local count = 0
    for _ in pairs(naughty.active) do
        count = count + 1
    end

    return count
end

local notif_list

if active_notif_num() ~= 0 then
    notif_list = wibox.widget({
        widget_template = {
            {
                naughty.widget.icon,
                {
                    naughty.widget.title,
                    naughty.widget.message,
                    {
                        layout = wibox.widget {
                            spacing_widget = wibox.widget {
                                orientation = "horizontal",
                                span_ratio = 0.9,
                                widget = wibox.widget.separator
                            },
                            spacing = 3,
                            layout = wibox.layout.flex.vertical
                        },
                        widget = naughty.list.widgets,
                    },
                    layout = wibox.layout.align.horizontal
                },
                spacing = 10,
                fill_space = true,
                layout = wibox.layout.fixed.vertical
            },
            margins = 5,
            widget = wibox.container.margin
        },
        widget = naughty.list.notifications
    })
else
    notif_list = wibox.widget({
        text = "no notifications",
        font = beautiful.font .. " Bold 14",
    })
end

return notif_list
