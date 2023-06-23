require("configuration.init")

local wibox = require("wibox")
local animation = require("modules.animation")
local xrsrc = require("beautiful.xresources")
local dpi = xrsrc.apply_dpi

local update_tags = function(self, c3)
    local txtbox = self:get_children_by_id('icon_role')[1]
    txtbox.font = "JetBrainsMono Bold 18"

    if c3.selected then
        txtbox.markup = "<span color='" .. beautiful.lgreen .. "'></span>"
    elseif #c3:clients() == 0 then
        txtbox.markup = "<span color='" .. beautiful.disabled .. "'></span>"
    else
        txtbox.markup = "<span color='" .. beautiful.disabled .. "'></span>"
    end
end

return function(s)
    local space = wibox.widget.textbox("   ") -- spacing widget

    local date = wibox.widget({
        widget = wibox.widget.textclock,
        format = "<span color='" .. beautiful.lgreen .. "'>%B %d, %Y</span>",
        align = "center",
        valign = "center",
        font = beautiful.font .. " Bold 14"
    })
    local time = wibox.widget({
        widget = wibox.widget.textclock,
        format = "<span color='" .. beautiful.lgreen .. "'>%I:%M</span>",
        align = "center",
        valign = "center",
        font = beautiful.font .. " Bold 14"
    })

    local taglist_buttons = gears.table.join(
        awful.button({ }, 1, function(t) t:view_only() end),
        awful.button({ modkey }, 1, function(t)
            if client.focus then
                client.focus:move_to_tag(t)
            end
        end),
        awful.button({ }, 3, awful.tag.viewtoggle),
        awful.button({ modkey }, 3, function(t)
            if client.focus then
                client.focus:toggle_tag(t)
            end
        end),
        awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
        awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
    )

    s.taglist = awful.widget.taglist({
        screen = s,
        filter = awful.widget.taglist.filter.all,
        layout = {
            layout = wibox.layout.fixed.horizontal,
            spacing = -12
        },
        widget_template = {
            widget = wibox.container.margin,
            forced_width = dpi(25),
            forced_height = dpi(20),
            create_callback = function(self, c3, _)
                local indicator = wibox.widget({
                    widget = wibox.container.place,
                    valign = "center",
                    {
                        widget = wibox.container.background,
                        forced_height = dpi(10),
                        shape = gears.shape.rounded_bar,
                    },
                })

                self.indicator_animation = animation:new({
                    duration = 0.125,
                    easing = animation.easing.linear,
                    update = function(self, pos)
                        indicator.children[1].forced_width = pos
                    end,
                })

                self:set_widget(indicator)

                if c3.selected then
                    self.widget.children[1].bg = beautiful.lgreen
                    self.indicator_animation:set(dpi(35))
                elseif #c3:clients() == 0 then
                    self.widget.children[1].bg = beautiful.disabled
                    self.indicator_animation:set(dpi(10))
                else
                    self.widget.children[1].bg = beautiful.disabled
                    self.indicator_animation:set(dpi(18))
                end
            end,
            update_callback = function(self, c3, _)
                if c3.selected then
                    self.widget.children[1].bg = beautiful.lgreen
                    self.indicator_animation:set(dpi(35))
                elseif #c3:clients() == 0 then
                    self.widget.children[1].bg = beautiful.disabled
                    self.indicator_animation:set(dpi(10))
                else
                    self.widget.children[1].bg = beautiful.disabled
                    self.indicator_animation:set(dpi(18))
                end
            end
        },
        buttons = taglist_buttons,
    })

    s.wibar = awful.wibar({
        stretch = true,
        position = "top",
        height = 35,
        screen = s,
        shape = gears.shape.rounded_bar,
        margins = {
            top = 14,
            left = 14,
            right = 14,
            bottom = 0
        }
    })

    s.wibar:setup {
        layout = wibox.layout.align.horizontal,
        expand = "none",
        {
            layout = wibox.layout.fixed.horizontal,
            space,
            date
        },
        {
            layout = wibox.layout.fixed.horizontal,
            s.taglist,
        },
        {
            layout = wibox.layout.fixed.horizontal,
            time,
            space
        }
    }
end
