-- Inspired by the VSCode Min Dark theme :: https://github.com/miguelsolorio/min-theme

local M = {}

M.base_30 = {
  white = "#e1e4e8",
  darker_black = "#181818",
  black = "#1f1f1f",
  black2 = "#252525",
  one_bg = "#2a2a2a",
  one_bg2 = "#323232",
  one_bg3 = "#3a3a3a",
  grey = "#4a4a4a",
  grey_fg = "#5a5f66",
  grey_fg2 = "#6b737c",
  light_grey = "#7d858e",
  red = "#f97583",
  baby_pink = "#fdaeb7",
  pink = "#f692ce",
  line = "#2a2a2a",
  green = "#85e89d",
  vibrant_green = "#9bf0b0",
  blue = "#79b8ff",
  nord_blue = "#8fc4ff",
  yellow = "#ffea7f",
  sun = "#fff5b1",
  purple = "#b392f0",
  dark_purple = "#9a76e0",
  teal = "#73e3d6",
  orange = "#ffab70",
  cyan = "#9ecbff",
  statusline_bg = "#1a1a1a",
  lightbg = "#2a2a2a",
  pmenu_bg = "#b392f0",
  folder_bg = "#79b8ff",
}

M.base_16 = {
  base00 = "#1f1f1f",
  base01 = "#252525",
  base02 = "#2a2a2a",
  base03 = "#6b737c",
  base04 = "#959da5",
  base05 = "#e1e4e8",
  base06 = "#f0f0f0",
  base07 = "#ffffff",
  base08 = "#e1e4e8", -- variables
  base09 = "#79b8ff", -- constants / numbers
  base0A = "#b392f0", -- types
  base0B = "#ffab70", -- strings
  base0C = "#79b8ff", -- escapes / regex
  base0D = "#b392f0", -- functions
  base0E = "#f97583", -- keywords
  base0F = "#959da5", -- delimiters
}

M.type = "dark"

M = require("base46").override_theme(M, "min_dark")

return M
