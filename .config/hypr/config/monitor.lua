-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                     Monitor Configuration                   ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
--
-- Monitor wiki https://wiki.hyprland.org/0.55.0/Configuring/Monitors/

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1.07,
})

hl.config({ xwayland = { force_zero_scaling = true } })
