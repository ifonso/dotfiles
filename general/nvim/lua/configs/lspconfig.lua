local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

local servers = { "clangd", "pyright", "ruff", "gopls", "rust_analyzer", "zls" }

vim.lsp.config("clangd", {
  on_init = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    nvlsp.on_init(client, bufnr)
  end,
})

-- use the project's .venv python (pyright falls back to the one in PATH otherwise)
vim.lsp.config("pyright", {
  on_init = function(client, bufnr)
    local venv = vim.fs.find(".venv", { upward = true, type = "directory", path = client.root_dir })[1]
    if venv then
      client.settings.python = vim.tbl_deep_extend("force", client.settings.python or {}, {
        pythonPath = venv .. "/bin/python",
      })
      client:notify("workspace/didChangeConfiguration", { settings = nil })
    end
    nvlsp.on_init(client, bufnr)
  end,
})

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      lint = {
        ignore = { "I001" }, -- import order
      },
    },
  },
})

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      cargo = { features = "all" }, -- Enable all features
      check = { command = "clippy" }, -- Run clippy on save
    },
  },
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
