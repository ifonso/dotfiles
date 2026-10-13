-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "my_groove",
	transparency = false,

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
		["@keyword"] = { italic = true },
		["@keyword.return"] = { italic = true, bold = true },
		["@function"] = { bold = true },
		Type = { bold = true }, -- classes (@type e @lsp.type.class linkam pra cá)
		["@type.builtin"] = { italic = true },
		["@variable.parameter"] = { italic = true },
	},
}

-- extra tools for :MasonInstallAll (LSPs enabled in configs/lspconfig.lua are picked up automatically)
M.mason = { pkgs = { "mypy" } }

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
