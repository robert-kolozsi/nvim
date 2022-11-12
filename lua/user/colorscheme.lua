-- Possible themes for solarized8:
-- solarized8, solarized8_high, solarized8_flat, solarized8_low
local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
