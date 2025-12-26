local lspconfig = require("lspconfig")

-- Zig LSP
lspconfig.zls.setup({
  capabilities = capabilities,
  cmd = { vim.fn.expand("~/.local/share/zls/zig-out/bin/zls") },
})

-- Python LSP
lspconfig.pyright.setup({})

-- Go LSP
lspconfig.gopls.setup({})

-- C LSP
lspconfig.clangd.setup({
  capabilities = capabilities,
  cmd = { "clangd", "--background-index", "--compile-commands-dir=." },
})

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})
