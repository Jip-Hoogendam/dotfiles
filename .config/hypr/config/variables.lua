-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Variables Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

require("config.colors")
-- Variables wiki https://wiki.hyprland.org/0.55.0/Configuring/Variables/ #
-- https://wiki.hyprland.org/0.55.0/Configuring/Variables/#general

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 2, direction = "pinch", mods = "SUPER", action = "float" })

hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 5,
		border_size = 3,
		col = { active_border = Pastelbase, inactive_border = Pastelgray },
		layout = "dwindle",

		-- https://wiki.hyprland.org/0.55.0/Configuring/Variables/#snap
		snap = {
			enabled = true,
		},
	},

	-- https://wiki.hyprland.org/0.55.0/Configuring/Variables/#group
	group = {
		col = {
			border_active = Pastelgreen,
			border_inactive = Pastelgray,
			border_locked_active = Pastelblue,
			border_locked_inactive = Pastelblue,
		},

		-- https://wiki.hyprland.org/0.55.0/Configuring/Variables/#groupbar
		groupbar = {
			font_family = "Fira Sans",
			text_color = Pastelblue,
			col = {
				active = Pastelgreen,
				inactive = Pasteldgreen,
				locked_active = Pastelgreen,
				locked_inactive = Pastelblue,
			},
		},
	},

	-- https://wiki.hyprland.org/0.55.0/Configuring/Variables/#misc
	misc = {
		font_family = "Fira Sans",
		splash_font_family = "Fira Sans",
		disable_splash_rendering = true,
		disable_hyprland_logo = true,
		col = { splash = Pastelgreen },
		background_color = Pastelblue,
		enable_swallow = true,
		swallow_regex = "^(cachy-browser|firefox|nautilus|nemo|thunar|btrfs-assistant.)$",
		focus_on_activate = true,
		vrr = 2,
	},

	-- https://wiki.hyprland.org/0.55.0/Configuring/Variables/#render
	render = {
		direct_scanout = 1,
	},

	-- See https://wiki.hyprland.org/0.55.0/Configuring/Dwindle-Layout/ for more
	dwindle = {
		special_scale_factor = 0.8,
		preserve_split = true,
	},

	-- See https://wiki.hyprland.org/0.55.0/Configuring/Master-Layout/ for more
	master = {
		new_status = "master",
		special_scale_factor = 0.8,
	},
})
