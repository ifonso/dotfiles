-- Aplica highlights personalizados após carregar o tema
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local ok, normal = pcall(vim.api.nvim_get_hl, 0, { name = "Normal", link = false })
    if ok and normal and normal.bg then
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = normal.bg })
      vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = normal.bg })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = normal.bg })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#504945", bg = normal.bg })
    end
  end,
})

