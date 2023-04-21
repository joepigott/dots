require("configuration.init")
require("configuration.keys")

awful.rules.rules = {
    {
        rule = { },

        properties = {
            border_width =  beautiful.border_width,
            border_color = beautiful.border_focus,
            focus = awful.client.focus.filter,
            raise = true,
            keys = clientkeys,
            buttons = clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap+awful.placement.no_offscreen
        }
    },

    {
        rule_any = {
            instance = {
                "DTA",
                "copyq",
                "pinentry"
            },
            class = {
                "Arandr",
                "Blueman-manager",
                "Gpick",
                "Kruler",
                "MessageWin",
                "Sxiv",
                "Tor Browser",
                "Wpa_gui",
                "veromix",
                "xtightvncviewer",
            },

            name = {
                "Event Tester",
            },

            role = {
                "AlarmWindow",
                "ConfigManager",
                "pop-up",
            }
        },

        properties = {
            floating = true
        }
    },

    {
        rule = {},

        except = {
            class = "Polybar"
        },

        callback = function(c)
            c.shape = function(cr, w, h)
                gears.shape.rounded_rect(cr, w, h, 15)
            end
        end
    },

    {
        rule = {
            class = "Polybar"
        },

        callback = function(c)
            c.border_width = 0
        end
    }
}

