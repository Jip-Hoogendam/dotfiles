-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Windowrules Configuration               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Window Rules
-- https://wiki.hyprland.org/0.55.0/Configuring/Window-Rules/

require("config.colors")

----------------------------------------------------------------
-- Float Necessary Windows
----------------------------------------------------------------

hl.window_rule({
	match = { class = "^(org%.pulseaudio%.pavucontrol)$" },
	float = true,
})

hl.window_rule({
	match = {
		class = "^()$",
		title = "^(Picture in picture)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^()$",
		title = "^(Save File)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^()$",
		title = "^(Open File)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(LibreWolf)$",
		title = "^(Picture%-in%-Picture)$",
	},
	float = true,
})

hl.window_rule({
	match = { class = "^(blueman%-manager)$" },
	float = true,
})

hl.window_rule({
	match = {
		class = "^(xdg%-desktop%-portal%-gtk|xdg%-desktop%-portal%-kde|xdg%-desktop%-portal%-hyprland)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(polkit%-gnome%-authentication%-agent%-1|hyprpolkitagent|org%.org%.kde%.polkit%-kde%-authentication%-agent%-1)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = { class = "^(CachyOSHello)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(zenity)$" },
	float = true,
})

hl.window_rule({
	match = {
		class = "^()$",
		title = "^(Steam %- Self Updater)$",
	},
	float = true,
})

hl.window_rule({
	match = { class = "^(ROOT)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(qemu)$" },
	float = true,
})

hl.window_rule({
	match = { title = "^(winit window)$" },
	float = true,
})

hl.window_rule({
	match = { title = "^(Photo Sweet %- Iced)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(chromium)$" },
	float = true,
})

----------------------------------------------------------------
-- Opacity Rules
----------------------------------------------------------------

hl.window_rule({
	match = { class = "^(thunar|nemo)$" },
	opacity = "0.92 override",
})

hl.window_rule({
	match = { class = "^(discord|armcord|webcord)$" },
	opacity = "0.96 override",
})

hl.window_rule({
	match = { title = "^(QQ|Telegram)$" },
	opacity = "0.95 override",
})

hl.window_rule({
	match = { title = "^(NetEase Cloud Music Gtk4)$" },
	opacity = "0.95 override",
})

----------------------------------------------------------------
-- General Window Rules
----------------------------------------------------------------

hl.window_rule({
	match = { title = "^(Picture%-in%-Picture)$" },
	float = true,
})

hl.window_rule({
	match = { title = "^(Picture%-in%-Picture)$" },
	size = { 960, 540 },
})

-- Old syntax:
-- windowrule = move 25%-, match:title ^(Picture-in-Picture)$
-- You may want to adjust this manually if positioning differs.
hl.window_rule({
	match = { title = "^(Picture%-in%-Picture)$" },
	move = { "monitor_w - window_w - 25", "25" },
})

hl.window_rule({
	match = { title = "^(imv|mpv|danmufloat|termfloat|nemo|ncmpcpp)$" },
	float = true,
})

hl.window_rule({
	match = { title = "^(imv|mpv|danmufloat|termfloat|nemo|ncmpcpp)$" },
	move = { "monitor_w - window_w - 25", "25" },
})

hl.window_rule({
	match = { title = "^(imv|mpv|danmufloat|termfloat|nemo|ncmpcpp)$" },
	size = { 960, 540 },
})

hl.window_rule({
	match = { title = "^(danmufloat)$" },
	pin = true,
})

hl.window_rule({
	match = { title = "^(danmufloat|termfloat)$" },
	rounding = 5,
})

hl.window_rule({
	match = { class = "^(kitty|Alacritty|ghostty)$" },
	animation = "slide right",
})

hl.window_rule({
	match = { class = "^(org%.mozilla%.firefox)$" },
	no_blur = true,
})

hl.window_rule({
	match = { title = "KDE Connect Daemon" },
	opacity = 1,
	no_blur = true,
	no_shadow = true,
	no_anim = true,
	float = true,
	no_focus = true,
	pin = true,
	move = { 0, 0 },
	size = { "monitor_w", "monitor_h" },
	suppress_event = "fullscreen",
})

----------------------------------------------------------------
-- Decorations: Floating windows on workspaces 1-10
----------------------------------------------------------------

hl.window_rule({
	match = {
		float = true,
		workspace = "w[fv1-10]",
	},
	border_size = 2,
})

hl.window_rule({
	match = {
		float = true,
		workspace = "w[fv1-10]",
	},
	border_color = cachylblue,
})

hl.window_rule({
	match = {
		float = true,
		workspace = "w[fv1-10]",
	},
	rounding = 8,
})

----------------------------------------------------------------
-- Decorations: Tiling windows on workspaces 1-10
----------------------------------------------------------------

hl.window_rule({
	match = {
		float = true,
		workspace = "f[1-10]",
	},
	border_size = 3,
})

hl.window_rule({
	match = {
		float = true,
		workspace = "f[1-10]",
	},
	rounding = 4,
})

-- Window Rules End

----------------------------------------------------------------
-- Workspace Rules
----------------------------------------------------------------

-- workspace = 1, default:true, monitor:$priMon
-- workspace = 6, default:true, monitor:$secMon

-- Workspace selectors
-- https://wiki.hypr.land/Configuring/Workspace-Rules/#workspace-selectors

-- workspace = r[1-5], monitor:$priMon
-- workspace = r[6-10], monitor:$secMon

-- workspace = special:scratchpad, on-created-empty:$applauncher

-- no_gaps_when_only deprecated instead workspaces rules with selectors can do the same

-- Smart gaps
-- https://wiki.hypr.land/Configuring/Workspace-Rules/#smart-gaps

hl.workspace_rule({ workspace = "w[tv-10]", gaps_out = 5, gaps_in = 3 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 5, gaps_in = 3 })

-- Workspace Rules End

----------------------------------------------------------------
-- Layer Rules
----------------------------------------------------------------

hl.layer_rule({
	match = { namespace = "logout_dialog" },
	animation = "slide top",
})

-- hl.layer_rule({
--   match = { namespace = "waybar" },
--   animation = "popin 50%",
-- })

hl.layer_rule({
	match = { namespace = "waybar" },
	animation = "slide down",
})

hl.layer_rule({
	match = { namespace = "wallpaper" },
	animation = "fade 50%",
})

-- Layer Rules End
