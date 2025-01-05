require("configuration.init")

local awful = require("awful")
local gears = require("gears")
local ruled = require("ruled")

client.connect_signal("manage", function(c)
    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        awful.placement.no_offscreen(c)
    end
end)

client.connect_signal("property::floating", function(c)
    if c.floating then
        awful.titlebar.show(c)
    else
        awful.titlebar.hide(c)
    end
end)

client.connect_signal("focus", function(c)
    if c.maximized then
        c.border_color = beautiful.yellow
    else
        c.border_color = beautiful.border_focus
    end
end)

client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

client.connect_signal("property::maximized", function(c)
    -- assert that the client is not floating when maximized. it should revert
    -- to its original state when unmaximized
    if c.maximized then
        c.floating = false
        awful.titlebar.hide(c)
        c.border_color = beautiful.yellow
    else
        c.border_color = beautiful.border_focus
    end
end)

client.connect_signal("request::geometry", function(c)
    if c.maximized then
        -- Set the geometry to respect gaps like a tiled window
        c:geometry({
            x = c.screen.workarea.x + 20,
            y = c.screen.workarea.y + 20,
            width = c.screen.workarea.width - 2 * 22,
            height = c.screen.workarea.height - 2 * 22
        })
    end
end)

client.connect_signal("property::fullscreen", function(c)
    if c.fullscreen then
        c.screen.wibar.visible = false
        c.shape = gears.shape.rectangle
    else
        c.screen.wibar.visible = true
        c.shape = function(cr, w, h)
            gears.shape.octogon(cr, w, h, 25)
        end
    end
end)

ruled.notification.connect_signal("request::rules", function()
    ruled.notification.append_rule {
        rule = {},
        properties = { position = "bottom_left" },
    }
end)
