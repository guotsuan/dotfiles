local beautiful = require("beautiful")
awful.rules = require("awful.rules")
s = screen.count()

-- {{{ Rules
--  TODO rulwes depending on the number of displays
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons } },
     {
         rule = { class = "Plasma-desktop" },
         properties = { floating = true },
         callback = function(c)
             c:geometry( { width = 600 , height = 500 } )
         end,
     },
    { rule_any = { class = { "kcmshell4", "Kcmshell4" } },
      properties = { floating = true, tag = tags[1][1] } },
    { rule_any = { class = { "MPlayer", "pinetry", "gimp", "Gimp", "plugin-container", "lxrandr", "Plugin-container" } },
      properties = { floating = true } },
    { rule = { name = "alsamixer" },
      properties = { floating = true  } },
    { rule_any = { class = { "clementine", "Clementine" } },
      properties = { tag = tags[1][5] } },
    { rule = { class = "Firefox" },
       properties = { tag = tags[s][1] } },
    { rule_any = { class = { "Pidgin", "Kopete", "Skype" } },
       properties = { tag = tags[1][7] } },
    { rule_any = { class = { "Pavucontrol" },
         callback = function(c)
              c:geometry( { width = 600 , height = 500 } )
       end,
    },
       properties = { floating = true } },
    { rule_any = { class = { "Google-chrome-stable" } },
       properties = { tag = tags[s][6] } },
    { rule = { class = "Eclipse" },
       properties = { tag = tags[s][2] } },
    { rule = { class = "Kontact" },
       properties = { tag = tags[s][4] } },
}
-- }}}
