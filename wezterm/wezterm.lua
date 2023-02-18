local wezterm = require("wezterm")
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
return {
	term = "xterm-256color",
	window_decorations = "RESIZE",
	default_prog = { "pwsh" },
	adjust_window_size_when_changing_font_size = false,
	audible_bell = "Disabled",
	font = wezterm.font({
		family = "JetBrainsMono Nerd Font",
		weight = "Bold",
		stretch = "Normal",
		style = "Normal",
		harfbuzz_features = { "cv29", "cv30", "ss01", "ss03", "ss06", "ss07", "ss09" },
	}),
	font_size = 12,
	window_padding = {
		left = 0,
		right = 0,
		top = "0.2cell",
		bottom = 0,
	},
	colors = {
		foreground = "#D8DEE9",
		background = "#242933",
		--[[ cursor_bg = "#D8DEE9", ]]
		--[[ cursor_border = "#D8DEE9", ]]
		cursor_fg = "#242933",
		selection_fg = "#D8DEE9",
		selection_bg = "#2E3440",

		ansi = { "#191C24", "#BF616A", "#A3BE8C", "#EBCB8B", "#81A1C1", "#B48EAD", "#8FBCBB", "#D8DEE9" },
		brights = { "#526078", "#D06F79", "#B1D196", "#F0D399", "#88C0D0", "#C895BF", "#93CCDC", "#E5E9F0" },

		tab_bar = {
			--[[ background = "#191c24", ]]

			active_tab = {
				bg_color = "#2b2042",
				fg_color = "#c0c0c0",
				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},
		},
	},
	tab_tab_at_bottom = true,
	tab_bar_style = {
		active_tab_left = wezterm.format({
			active_tab_left = wezterm.format({
				{ Background = { Color = "#0b0022" } },
				{ Foreground = { Color = "#2b2042" } },
				{ Text = SOLID_LEFT_ARROW },
			}),
			active_tab_right = wezterm.format({
				{ Background = { Color = "#0b0022" } },
				{ Foreground = { Color = "#2b2042" } },
				{ Text = SOLID_RIGHT_ARROW },
			}),
			inactive_tab_left = wezterm.format({
				{ Background = { Color = "#0b0022" } },
				{ Foreground = { Color = "#1b1032" } },
				{ Text = SOLID_LEFT_ARROW },
			}),
			inactive_tab_right = wezterm.format({
				{ Background = { Color = "#0b0022" } },
				{ Foreground = { Color = "#1b1032" } },
				{ Text = SOLID_RIGHT_ARROW },
			}),
		}),
	},
	hide_tab_bar_if_only_one_tab = true,
}
