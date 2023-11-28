require("configuration.init")

local wibox = require("wibox")
local dpi = beautiful.xresources.apply_dpi

client.connect_signal("request::titlebars", function(c)
    if c.requests_no_titlebar then
        return
    end

    awful
        .titlebar(c, {
        position = "top",
        size = dpi(30),
        font = beautiful.font .. "Bold 12",
        bg = beautiful.bg,
    })
    :setup({
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            {
                {
                    awful.titlebar.widget.closebutton(c),
                    margins = {
                        top = dpi(7),
                        bottom = dpi(7),
                        left = dpi(3),
                        right = dpi(3),
                    },
                    widget = wibox.container.margin
                },
                {
                    awful.titlebar.widget.minimizebutton(c),
                    margins = {
                        top = dpi(7),
                        bottom = dpi(7),
                        left = dpi(3),
                        right = dpi(3),
                    },
                    widget = wibox.container.margin
                },
                {
                    awful.titlebar.widget.maximizedbutton(c),
                    margins = {
                        top = dpi(7),
                        bottom = dpi(7),
                        left = dpi(3),
                        right = dpi(3),
                    },
                    widget = wibox.container.margin
                },
                layout = wibox.layout.fixed.horizontal,
            },
            top = dpi(2),
            bottom = dpi(2),
            left = dpi(8),
            widget = wibox.container.margin,
        },
        {
            {
                align = "center",
                font = beautiful.font .. " Bold 12",
                widget = awful.titlebar.widget.titlewidget(c),
                buttons = {
                    awful.button({
                        modifiers = {},
                        button = 1,
                        on_press = function()
                            c.maximized = false
                            c:activate({ context = "mouse_click", action = "mouse_move" })
                        end
                    }),
                },
            },
            layout = wibox.layout.flex.horizontal,
        },
        {
            {
                {
                    awful.titlebar.widget.ontopbutton(c),
                    margins = {
                        top = dpi(7),
                        bottom = dpi(7),
                        left = dpi(3),
                        right = dpi(3),
                    },
                    widget = wibox.container.margin
                },
                layout = wibox.layout.fixed.horizontal,
            },
            top = dpi(2),
            bottom = dpi(2),
            right = dpi(8),
            widget = wibox.container.margin,
        },
    })
end)
