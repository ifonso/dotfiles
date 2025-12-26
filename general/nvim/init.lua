-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end

-- lazy.vim no runtime como prioridade para plug loading
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup("plugins")

require("config.highlights") -- Highlights de tema
require("config.lsp") -- LSPs config
require("config.cmp") -- nvim-cmp + luasnip
require("config.keymaps") -- Keymaps default
require("config.options") -- Configs padrao
