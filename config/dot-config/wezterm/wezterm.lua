-- Reference: https://wezterm.org/config/files.html

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'
config.hide_tab_bar_if_only_one_tab = true

config.window_background_image = '/Users/Shared/Wallpapers/pink_sunset_bike_uhd.jpg'
config.window_background_image_hsb = {
  brightness = 0.1
}
config.window_background_opacity = 1

config.font = wezterm.font 'Hack Nerd Font Mono'
config.font_size = 16

-- Pull in the local keybind configs
config.disable_default_key_bindings = true
local keybinds = require 'tim-keybinds'
keybinds.apply_to_config(config)

-- Finally, return the configuration to wezterm:
return config
