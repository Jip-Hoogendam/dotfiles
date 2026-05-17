-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Autostart Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Autostart wiki https://wiki.hyprland.org/0.55.0/Configuring/Keywords/#executing #

require("config.defaults")

hl.on("hyprland.start", function()
	hl.exec_cmd("swaybg -o \\* -i /usr/share/wallpapers/custom/control-tv-segment.png -m fill")
	hl.exec_cmd("touch /tmp/cover.css")
	hl.exec_cmd("waybar &")
	hl.exec_cmd("~/Desktop/projects/wayBarApp/target/release/wayBarApp &")
	hl.exec_cmd("fcitx5 -d &")
	hl.exec_cmd("mako &")
	hl.exec_cmd("nm-applet --indicator &")
	hl.exec_cmd(
		'bash -c "mkfifo /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob && tail -f /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob | wob & disown" &'
	)
	hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1 &")
	hl.exec_cmd("nextcloud")

	-- for nextcloud
	hl.exec_cmd("/usr/lib/pam_kwallet_init &")
	hl.exec_cmd("systemctl --user import-environment &")
	hl.exec_cmd("hash dbus-update-activation-environment 2>/dev/null &")
	hl.exec_cmd("dbus-update-activation-environment --systemd &")
end)
