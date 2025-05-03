local wezterm = require 'wezterm'
local config = {}
config.colors = {
    background = 'black'   
}
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 0.85
config.color_scheme = 'Ic Green Ppl (Gogh)'
config.font = wezterm.font {
    family = 'JetBrains Mono',
    weight = 'Bold',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  }

return config