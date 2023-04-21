require("configuration.init")

myawesomemenu = {
    { "hotkeys", function() end },
    { "manual", terminal .. " -e man awesome" },
    { "edit config", editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", function() awesome.quit() end}
}

mymainmenu = awful.menu({
    items = {
        { "awesome", myawesomemenu },
        { "open terminal", terminal }
    }
})

mymainmenu.wibox.shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, 12)
end
