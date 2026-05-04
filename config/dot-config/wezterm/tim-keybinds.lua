local wezterm = require 'wezterm'
local act = wezterm.action

module = {}

function module.apply_to_config(config)

  config.leader = { key = 'w', mods = 'CTRL', timeout_milliseconds = 1000 }

  config.keys = {
    { key = 'Enter', mods = 'LEADER|SUPER', action = act.ToggleFullScreen },
    { key = '-', mods = 'SUPER', action = act.DecreaseFontSize },
    { key = '0', mods = 'SUPER', action = act.ResetFontSize },
    { key = '=', mods = 'SUPER', action = act.IncreaseFontSize },
    { key = 'L', mods = 'LEADER|CTRL', action = act.ShowDebugOverlay },
    { key = 'L', mods = 'LEADER|SHIFT|CTRL', action = act.ShowDebugOverlay },
    { key = 'P', mods = 'LEADER|CTRL', action = act.ActivateCommandPalette },
    { key = 'P', mods = 'LEADER|SHIFT|CTRL', action = act.ActivateCommandPalette },
    { key = 'c', mods = 'SUPER', action = act.CopyTo 'Clipboard' },
    { key = 'p', mods = 'LEADER|SHIFT|CTRL', action = act.ActivateCommandPalette },
    { key = 'q', mods = 'SUPER', action = act.QuitApplication },
    { key = 'r', mods = 'LEADER|SUPER', action = act.ReloadConfiguration },
    { key = 'v', mods = 'SUPER', action = act.PasteFrom 'Clipboard' },
    { key = 'phys:Space', mods = 'LEADER', action = act.QuickSelect },
    { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1) },
    { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1) },
    { key = 'Copy', mods = 'NONE', action = act.CopyTo 'Clipboard' },
    { key = 'Paste', mods = 'NONE', action = act.PasteFrom 'Clipboard' },
  }
end

return module
