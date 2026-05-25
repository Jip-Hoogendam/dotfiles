-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Animations Configuration                 ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
--
-- https://wiki.hyprland.org/0.55.0/Configuring/Animations/
--
hl.curve("rubber", { type = "spring", mass = 1, stiffness = 70, dampening = 10 })
hl.curve("overshot", { type = "bezier", points = { { 0.13, 0.99 }, { 0.29, 1.0 } } })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, spring = "rubber", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, spring = "rubber", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, spring = "rubber" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 7, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 7, bezier = "overshot", style = "slide" })
