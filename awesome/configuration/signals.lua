require("configuration.init")

local awful = require("awful")

client.connect_signal("manage", function(c)
    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        awful.placement.no_offscreen(c)
    end
end)

-- work in progress --

-- client.connect_signal("property::floating", function(c)
--     if c.floating then
--         awful.titlebar.show(c)
--     else
--         awful.titlebar.hide(c)
--     end
-- end)

-- client.connect_signal("request::titlebars", function(c)
--     if c.
--     local wibox = require("wibox")
--
--     local top_titlebar = awful.titlebar(c, {
--         size = 20,
--     })
-- 
--     local buttons = gears.table.join(
--         awful.button({ }, 1, function()
--             client.focus = c
--             c:raise()
--             awful.mouse.client.move(c)
--         end),
--         awful.button({ }, 3, function()
--             client.focus = c
--             c:raise()
--             awful.mouse.client.resize(c)
--         end)
--     )
-- 
--     top_titlebar.widget = {
--         { -- title
--             {
--                 halign = "center",
--                 widget = awful.titlebar.widget.titlewidget(c)
--             },
--             buttons = buttons,
--             layout = wibox.layout.flex.horizontal
--         },
--         { -- right buttons
--             awful.titlebar.widget.maximizedbutton(c),
--             awful.titlebar.widget.stickybutton(c),
--             awful.titlebar.widget.closebutton(c),
--             layout = wibox.layout.fixed.horizontal()
--         },
--         layout = wibox.layout.align.horizontal
--     }
-- end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

client.connect_signal("property::fullscreen", function(c)
    if c.fullscreen then
        c.shape = gears.shape.rectangle
    else
        c.shape = function(cr, w, h)
            gears.shape.rounded_rect(cr, w, h, 15)
        end
    end
end)
