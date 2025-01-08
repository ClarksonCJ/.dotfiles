-- pull in the wezterm APIs
local wezterm = require('wezterm')
local config = wezterm.config_builder()


config.color_scheme = 'rose-pine'
config.font = wezterm.font('DroidSansM Nerd Font')
config.font_size = 16
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
config.window_close_confirmation = "NeverPrompt"
config.send_composed_key_when_left_alt_is_pressed = true


return config
