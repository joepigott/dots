require("configuration.init")

local wibox = require("wibox")
local animation = require("modules.animation")
local xrsrc = require("beautiful.xresources")
local dpi = xrsrc.apply_dpi

--local function trim(s)
--   return (s:gsub("^%s*(.-)%s*$", "%1"))
--end
--
---- volume widget stuff --
--
--local volume_widget = wibox.widget({
--    {
--        min_value = 0,
--        max_value = 50,
--        border_width = 0,
--        forced_height = 20,
--        forced_width = 100,
--        margins = {
--            top = 13,
--            bottom = 13,
--        },
--        shape = gears.shape.rounded_bar,
--        bar_shape = gears.shape.rounded_bar,
--        color = beautiful.lgreen,
--        background_color = beautiful.disabled,
--        id = "vol",
--        widget = wibox.widget.progressbar
--    },
--    layout = wibox.layout.fixed.horizontal,
--    set_volume = function(self, vol)
--        self.vol.value = vol
--    end
--})
--
--gears.timer {
--    timeout = .1,
--    call_now = true,
--    autostart = true,
--    callback = function()
--        awful.spawn.easy_async("pactl get-sink-volume @DEFAULT_SINK@", 
--        function(out)
--            local tokens = {}
--            for token in string.gmatch(out, "[^/]+") do
--                table.insert(tokens, token)
--            end
--            local result = trim(tokens[2])
--            result = string.sub(result, 1, -2)
--            volume_widget.volume = tonumber(result)
--        end)
--    end
--}

return function(s)
    local space = wibox.widget.textbox("   ") -- spacing widget
    local sep = wibox.widget.textbox("<span color='" .. beautiful.fg .. "'> | </span>") -- separator widget
    sep.font = beautiful.font .. " Bold 14"

    local date = wibox.widget({
        widget = wibox.widget.textclock,
        format = "<span color='" .. beautiful.lgreen .. "'>%B %d, %Y</span>",
        align = "center",
        valign = "center",
        font = beautiful.font .. " Bold 14"
    })
    local time = wibox.widget({
        widget = wibox.widget.textclock,
        format = "<span color='" .. beautiful.lgreen .. "'>%I:%M %P</span>",
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
            date,
        },
        {
            layout = wibox.layout.fixed.horizontal,
            s.taglist,
        },
        {
            layout = wibox.layout.fixed.horizontal,
--            volume_widget,
            space,
            time,
            space,
        }
    }
end
