return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "configs.null-ls"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false, -- o branch main não suporta lazy-loading
    -- no branch main não existe mais ensure_installed; parsers são instalados via install()
    config = function()
      require("nvim-treesitter").install {
        "lua", "luadoc", "printf", "vim", "vimdoc",
        "c", "go", "rust", "python", "zig",
        "markdown", "markdown_inline", "bash", "fish",
      }

      -- ```shell / ```zsh nos blocos de código do markdown usam o parser de bash
      vim.treesitter.language.register("bash", { "shell", "zsh" })

      -- o branch main também não liga o highlight sozinho
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = { side = "right" },
    },
  },

  -- rolagem animada em <C-d>/<C-u>/<C-f>/<C-b>/zz/zt/zb (o 'smoothscroll' nativo não anima)
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
