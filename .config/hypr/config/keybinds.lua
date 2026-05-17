-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                         Keybinds                            ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

require("config.defaults")

-- ============================================================
-- Basic
-- ============================================================

hl.bind(MainMod .. " + Q", hl.dsp.exec_cmd("uwsm app -- " .. Terminal), { description = "Open terminal" })
hl.bind(MainMod .. " + E", hl.dsp.exec_cmd(Filemanager), { description = "Open file manager" })
hl.bind(MainMod .. " + A", hl.dsp.exec_cmd(Capturing), { description = "Screen capture selection" })
hl.bind(MainMod .. " + C", hl.dsp.window.close(), { description = "Close active window" })

hl.bind(
	MainMod .. " + SHIFT + M",
	hl.dsp.exec_cmd('loginctl terminate-user ""'),
	{ description = "Terminate user session" }
)

hl.bind(MainMod .. " + V", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating mode" })
hl.bind(MainMod .. " + R", hl.dsp.exec_cmd(Applauncher), { description = "Application launcher" })
hl.bind(MainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }), { description = "Toggle fullscreen" })
hl.bind(MainMod .. " + Y", hl.dsp.window.pin(), { description = "Pin window" })
hl.bind(MainMod .. " + SPACE", hl.dsp.layout("togglesplit"), { description = "Toggle split mode" })
hl.bind(MainMod .. " + B", hl.dsp.exec_cmd("uwsm app -- " .. WebBrowser), { description = "Open browser" })
hl.bind(MainMod .. " + D", hl.dsp.exec_cmd("vesktop"), { description = "Open Vesktop" })
hl.bind(MainMod .. " + SHIFT + P", hl.dsp.exec_cmd("dunstctl close-all"), { description = "Clear notifications" })
hl.bind(MainMod .. " + N", hl.dsp.exec_cmd("uwsm app -- obsidian"), { description = "Open Obsidian" })

-- ============================================================
-- Grouping
-- ============================================================

hl.bind(MainMod .. " + G", hl.dsp.group.toggle(), { description = "Toggle group" })
hl.bind(MainMod .. " + TAB", hl.dsp.group.next(), { description = "Next window in group" })

-- ============================================================
-- Volume
-- ============================================================

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd([[pactl set-sink-volume @DEFAULT_SINK@ +5% &&
        pactl get-sink-volume @DEFAULT_SINK@ |
        grep -oP '\d+(?=%)' |
        awk '{if($1>100) system("pactl set-sink-volume @DEFAULT_SINK@ 100%")}' &&
        pactl get-sink-volume @DEFAULT_SINK@ |
        grep -oP '\d+(?=%)' |
        awk '{print $1}' |
        head -1 > /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob]]),
	{ repeating = true }
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd([[pactl set-sink-volume @DEFAULT_SINK@ -5% &&
        pactl get-sink-volume @DEFAULT_SINK@ |
        grep -oP '\d+(?=%)' |
        awk '{print $1}' |
        head -1 > /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob]]),
	{ repeating = true }
)

hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd([[amixer sset Master toggle |
        sed -En '/\[on\]/ s/.*\[([0-9]+)%\].*/\1/ p; /\[off\]/ s/.*/0/p' |
        head -1 > /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob]]),
	{ locked = true }
)

-- ============================================================
-- ASUS
-- ============================================================

hl.bind("XF86Launch4", hl.dsp.exec_cmd("asusctl profile -n"), { description = "Switch power profile" })
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("asusctl -n"), { description = "Keyboard brightness up" })
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("asusctl -p"), { description = "Keyboard brightness down" })

-- ============================================================
-- Playback
-- ============================================================

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- ============================================================
-- Brightness
-- ============================================================

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s +5%"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"), { repeating = true })
hl.bind(MainMod .. " + P", hl.dsp.exec_cmd("hyprlock -q"), { description = "Lock screen" })
hl.bind(MainMod .. " + O", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"), { description = "Reload Waybar" })

-- ============================================================
-- Window Actions
-- ============================================================

-- mouse drag
hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- move windows

hl.bind(MainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(MainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(MainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(MainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- focus movement

hl.bind(MainMod .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(MainMod .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(MainMod .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(MainMod .. " + J", hl.dsp.focus({ direction = "d" }))

-- ============================================================
-- Resize Submap
-- ============================================================

hl.bind(MainMod .. " + X", hl.dsp.submap("resize"), { description = "Resize mode" })

hl.define_submap("resize", function()
	hl.bind(
		"right",
		hl.dsp.window.resize({
			x = 15,
			y = 0,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"left",
		hl.dsp.window.resize({
			x = -15,
			y = 0,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"up",
		hl.dsp.window.resize({
			x = 0,
			y = -15,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"down",
		hl.dsp.window.resize({
			x = 0,
			y = 15,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"l",
		hl.dsp.window.resize({
			x = 15,
			y = 0,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"h",
		hl.dsp.window.resize({
			x = -15,
			y = 0,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"k",
		hl.dsp.window.resize({
			x = 0,
			y = -15,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind(
		"j",
		hl.dsp.window.resize({
			x = 0,
			y = 15,
			relative = true,
		}),
		{ repeating = true }
	)

	hl.bind("escape", hl.dsp.submap("reset"))
end)

-- ============================================================
-- Quick Resize
-- ============================================================

local resizeAmount = 15

local function resizeBind(key, x, y)
	hl.bind(
		MainMod .. " + CTRL + SHIFT + " .. key,
		hl.dsp.window.resize({
			x = x,
			y = y,
			relative = true,
		}),
		{ repeating = true }
	)
end

resizeBind("right", resizeAmount, 0)
resizeBind("left", -resizeAmount, 0)
resizeBind("up", 0, -resizeAmount)
resizeBind("down", 0, resizeAmount)

resizeBind("l", resizeAmount, 0)
resizeBind("h", -resizeAmount, 0)
resizeBind("k", 0, -resizeAmount)
resizeBind("j", 0, resizeAmount)

-- ============================================================
-- Workspace Movement
-- ============================================================

for i = 1, 9 do
	-- switch workspace
	hl.bind(MainMod .. " + " .. i, hl.dsp.focus({ workspace = tostring(i) }))

	-- move + follow
	hl.bind(
		MainMod .. " + SHIFT + " .. i,
		hl.dsp.window.move({
			workspace = tostring(i),
			follow = true,
		})
	)

	-- move silently
	hl.bind(
		MainMod .. " + CTRL + " .. i,
		hl.dsp.window.move({
			workspace = tostring(i),
		})
	)
end

-- workspace 10

hl.bind(MainMod .. " + 0", hl.dsp.focus({ workspace = "10" }))
hl.bind(
	MainMod .. " + SHIFT + 0",
	hl.dsp.window.move({
		workspace = "10",
		follow = true,
	})
)
hl.bind(
	MainMod .. " + CTRL + 0",
	hl.dsp.window.move({
		workspace = "10",
	})
)

-- relative workspace movement
hl.bind(
	MainMod .. " + SHIFT + left",
	hl.dsp.window.move({
		workspace = "-1",
		follow = true,
	})
)
hl.bind(
	MainMod .. " + SHIFT + right",
	hl.dsp.window.move({
		workspace = "+1",
		follow = true,
	})
)

-- ============================================================
-- Workspace Navigation
-- ============================================================

hl.bind(MainMod .. " + PERIOD", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MainMod .. " + COMMA", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(MainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(MainMod .. " + slash", hl.dsp.focus({ workspace = "previous" }))

-- ============================================================
-- Special Workspaces
-- ============================================================

hl.bind(
	MainMod .. " + minus",
	hl.dsp.window.move({
		workspace = "special",
	})
)
hl.bind(MainMod .. " + equal", hl.dsp.workspace.toggle_special("special"))
hl.bind(MainMod .. " + space", hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind(
	MainMod .. " + ALT + SHIFT + F1",
	hl.dsp.window.move({
		workspace = "special:scratchpad",
	})
)

-- ============================================================
-- Config
-- ============================================================

hl.config({
	binds = {
		allow_workspace_cycles = true,
		workspace_back_and_forth = true,
		workspace_center_on = true,
		movefocus_cycles_fullscreen = true,
		window_direction_monitor_fallback = true,
	},
})
