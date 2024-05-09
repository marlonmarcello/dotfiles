-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.font = wezterm.font_with_fallback {
  "FiraCode Nerd Font"
}
config.font_size = 16
config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
