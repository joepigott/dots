require("configuration.init")

local naughty = require("naughty")
local wibox = require("wibox")
local animation = require("modules.animation")
local xrsrc = require("beautiful.xresources")
local dpi = xrsrc.apply_dpi

return function(s)
    local space = wibox.widget.textbox("  ") -- spacing widget
    local sep = wibox.widget.textbox("<span color='" .. beautiful.white .. "'> | </span>") -- separator widget
    sep.font = beautiful.font .. " Bold 14"

    local date = wibox.widget({
        widget = wibox.widget.textclock,
        format = "<span color='" .. beautiful.cyan .. "'>%m/%d/%y</span>",
        align = "center",
        valign = "center",
        font = beautiful.font .. " Bold 14"
    })
    local time = wibox.widget({
        widget = wibox.widget.textclock,
        format = "<span color='" .. beautiful.cyan .. "'>%I:%M %P</span>",
        align = "center",
        valign = "center",
        font = beautiful.font .. " Bold 14"
    })

    local weather_inner = awful.widget.watch(
        "weather-text --units imperial",
        60,
        nil,
        wibox.widget({
            widget = wibox.widget.textbox,
            font = beautiful.font .. " Bold 14"
        })
    )

    local weather = wibox.widget({
        weather_inner,
        fg = beautiful.yellow,
        widget = wibox.container.background
    })

    local vpn_inner = awful.widget.watch(
        "vpnstatus.sh",
        60,
        nil,
        wibox.widget({
            widget = wibox.widget.textbox,
            font = beautiful.font .. " Bold 14"
        })
    )

    local vpn = wibox.widget({
        vpn_inner,
        fg = beautiful.yellow,
        widget = wibox.container.background
    })

    local battery = require("battery-widget")

    volume = require("awesome-wm-widgets.pactl-widget.volume")

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
                        shape = gears.shape.rectangle,
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
                    self.widget.children[1].bg = beautiful.cyan
                    self.indicator_animation:set(dpi(35))
                elseif #c3:clients() == 0 then
                    self.widget.children[1].bg = beautiful.red
                    self.indicator_animation:set(dpi(10))
                else
                    self.widget.children[1].bg = beautiful.red
                    self.indicator_animation:set(dpi(18))
                end
            end,
            update_callback = function(self, c3, _)
                if c3.selected then
                    self.widget.children[1].bg = beautiful.cyan
                    self.indicator_animation:set(dpi(35))
                elseif #c3:clients() == 0 then
                    self.widget.children[1].bg = beautiful.red
                    self.indicator_animation:set(dpi(10))
                else
                    self.widget.children[1].bg = beautiful.red
                    self.indicator_animation:set(dpi(18))
                end
            end
        },
        buttons = taglist_buttons,
    })

    s.wibar = awful.wibar({
        stretch = true,
        position = "top",
        height = dpi(35),
        screen = s,
        shape = function(cr, w, h)
            gears.shape.octogon(cr, w, h, 25)
        end,
        margins = {
            top = 20,
            left = 20,
            right = 20,
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
            sep,
            weather
        },
        {
            layout = wibox.layout.fixed.horizontal,
            s.taglist,
        },
        {
            layout = wibox.layout.fixed.horizontal,
            {
                {
                    widget = wibox.widget.systray,
                    base_size = 40,
                },
                valign = "center",
                widget = wibox.container.place
            },
            sep,
            {
                {
                    widget = volume {
                        widget_type = "horizontal_bar",
                        main_color = beautiful.yellow,
                        mute_color = beautiful.disabled,
                        bg_color = beautiful.alt_bg2,
                        width = 75,
                        margins = 27.5,
                        with_icon = false,
                        tooltip = true,
                    },
                    base_size = 200,
                },
                valign = "center",
                widget = wibox.container.place,
            },
            space,
            battery {
                ac = "ACAD",
                adapter = "BAT1",
                percent_colors = {
                    { 20, beautiful.red },
                    { 999, beautiful.green },
                },
                listen = true,
                timeout = 10,
                widget_text = "${color_on}${percent}%${color_off}",
                widget_font = beautiful.font .. " Bold 14",
                alert_threshold = 20,
                alert_timeout = 0,
                alert_title = "Low Battery",
                alert_text = "Plug in now to reduce battery wear"
            },
            space,
            vpn,
            sep,
            time,
            space,
        }
    }
end
