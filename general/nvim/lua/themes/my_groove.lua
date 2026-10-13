-- Gruvbox Material (medium) :: port of ~/.config/helix/themes/my_groove.toml

local M = {}

local p = {
  bg0 = "#32302f",
  bg1 = "#3c3836",
  bg2 = "#504945",
  bg3 = "#665c54",
  bg4 = "#7c6f64",
  fg0 = "#d4be98",
  fg1 = "#ddc7a1",
  fg3 = "#bdae93",
  fg4 = "#a89984",
  gray = "#928374",
  red = "#ea6962",
  green = "#a9b665",
  yellow = "#d8a657",
  blue0 = "#7daea3",
  blue = "#83a598",
  purple = "#d3869b",
  aqua = "#89b482",
  orange = "#e78a4e",
}

M.base_30 = {
  white = p.fg1,
  darker_black = "#2a2827",
  black = p.bg0, -- nvim bg
  black2 = "#3a3735",
  one_bg = p.bg1,
  one_bg2 = "#45403d",
  one_bg3 = p.bg2,
  grey = "#5a524c",
  grey_fg = p.bg3,
  grey_fg2 = p.bg4,
  light_grey = p.gray,
  red = p.red,
  baby_pink = "#ef8a85",
  pink = p.purple,
  line = p.bg1, -- for lines like vertsplit
  green = p.green,
  vibrant_green = "#b4c26f",
  blue = p.blue,
  nord_blue = p.blue0,
  yellow = p.yellow,
  sun = "#e2b86b",
  purple = p.purple,
  dark_purple = "#c47a8f",
  teal = p.aqua,
  orange = p.orange,
  cyan = p.aqua,
  statusline_bg = p.bg1,
  lightbg = p.bg2,
  pmenu_bg = p.blue,
  folder_bg = p.blue0,
}

M.base_16 = {
  base00 = p.bg0,
  base01 = p.bg1,
  base02 = p.bg2,
  base03 = p.bg3,
  base04 = p.fg4,
  base05 = p.fg1,
  base06 = "#e2cca9",
  base07 = "#fbf1c7",
  base08 = p.blue, -- members / properties / parameters
  base09 = p.purple, -- constants / numbers
  base0A = p.yellow, -- types
  base0B = p.green, -- strings
  base0C = p.orange, -- escapes / regex / special
  base0D = p.green, -- functions
  base0E = p.red, -- keywords
  base0F = p.orange, -- punctuation
}

M.type = "dark"

M = require("base46").override_theme(M, "my_groove")

M.polish_hl = {
  defaults = {
    Comment = { fg = p.gray, italic = true },
    LineNr = { fg = p.bg3 },
    CursorLineNr = { fg = p.yellow },
    CursorLine = { bg = p.bg1 },
    Visual = { bg = p.bg2 },
  },

  syntax = {
    Operator = { fg = p.purple },
    Include = { fg = p.aqua },
    Statement = { fg = p.red },
    Repeat = { fg = p.red },
    StorageClass = { fg = p.red },
    Structure = { fg = p.yellow },
    Label = { fg = p.red },
    Tag = { fg = p.aqua },
    Special = { fg = p.purple },
    Identifier = { fg = p.fg1 },
  },

  treesitter = {
    ["@comment"] = { fg = p.gray, italic = true },

    ["@variable"] = { fg = p.fg1 },
    ["@variable.builtin"] = { fg = p.orange, italic = true },
    ["@variable.parameter"] = { fg = p.blue, italic = true },
    ["@variable.member"] = { fg = p.blue },
    ["@property"] = { fg = p.blue },
    ["@module"] = { fg = p.aqua },

    ["@constant"] = { fg = p.purple },
    ["@constant.builtin"] = { fg = p.purple },
    ["@constant.macro"] = { fg = p.aqua },
    ["@character"] = { fg = p.aqua },
    ["@string.escape"] = { fg = p.orange },
    ["@string.regexp"] = { fg = p.orange },
    ["@string.special"] = { fg = p.orange },
    ["@string.special.symbol"] = { fg = p.yellow },

    ["@attribute"] = { fg = p.aqua, italic = true },
    ["@annotation"] = { fg = p.fg1 },
    ["@error"] = { fg = p.red },

    ["@keyword"] = { fg = p.red },
    ["@keyword.import"] = { fg = p.aqua },
    ["@keyword.repeat"] = { fg = p.red },
    ["@keyword.storage"] = { fg = p.red },
    ["@keyword.exception"] = { fg = p.red },
    ["@keyword.directive"] = { fg = p.aqua },
    ["@label"] = { fg = p.red },

    ["@function.builtin"] = { fg = p.yellow },
    ["@function.macro"] = { fg = p.blue },
    ["@constructor"] = { fg = p.purple },

    ["@operator"] = { fg = p.purple },
    ["@punctuation"] = { fg = p.orange },
    ["@punctuation.bracket"] = { fg = p.orange },
    ["@punctuation.delimiter"] = { fg = p.orange },

    ["@tag"] = { fg = p.aqua },
    ["@tag.attribute"] = { fg = p.blue },
    ["@tag.delimiter"] = { fg = p.orange },

    ["@type.builtin"] = { fg = p.yellow },

    ["@markup.heading"] = { fg = p.aqua },
    ["@markup.raw"] = { fg = p.red },
    ["@markup.link"] = { fg = p.red },
    ["@markup.link.label"] = { fg = p.red },
    ["@markup.link.url"] = { fg = p.green, underline = true },
    ["@markup.quote"] = { fg = p.fg4, italic = true },
  },

  statusline = {
    St_NormalMode = { fg = p.bg1, bg = p.fg3, bold = true },
    St_NormalModeSep = { fg = p.fg3 },
    St_InsertMode = { fg = p.bg1, bg = p.blue, bold = true },
    St_InsertModeSep = { fg = p.blue },
    St_VisualMode = { fg = p.bg1, bg = p.orange, bold = true },
    St_VisualModeSep = { fg = p.orange },
  },
}

return M
