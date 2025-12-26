return {
  -- Dependencia de outros plugins
  { "nvim-lua/plenary.nvim" },

  -- Tema principal
    -- {
    --   "folke/tokyonight.nvim",
    --   priority = 1000,
    --   config = function()
    --     require("tokyonight").setup({
    --       style = "night", -- Opções: storm, night, moon, day
    --       transparent = false,
    --       styles = {
    --         comments = { italic = true },
    --         keywords = { italic = true },
    --         functions = { italic = false },
    --         variables = { italic = false },
    --       },
    --       sidebars = { "qf", "help", "terminal" },
    --       floats = "dark", -- popups mais escuros
    --     })
    --
    --     vim.cmd("colorscheme tokyonight")
    --   end,
    -- },
  -- {
  --   "datsfilipe/min-theme.nvim",
  --   priority = 1000,
  --   config = function()
  --     require('min-theme').setup({
  --       theme       = "dark",
  --       transparent = false,
  --       italics = {
  --         comments  = true,
  --         keywords  = true,
  --         functions = true,
  --         strings   = false,
  --         variables = false,
  --       },
  --       overrides = {},
  --     })
  --
  --     vim.cmd("colorscheme min-theme")
  --
  --   end,
  -- },

  {
    "sainnhe/gruvbox-material",

    priority = 1000,
    lazy = false,
    config = function()
      vim.g.gruvbox_material_background = "medium" -- opções: 'soft', 'medium', 'hard'
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_ui_contrast = "low"
      vim.o.background = "dark"
      vim.cmd("colorscheme gruvbox-material")
    end,
  },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Telescope
  { "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },

  -- LSP
  { "neovim/nvim-lspconfig" },

  -- Autocompletar
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Nvim-tree
  {
    "nvim-tree/nvim-tree.lua",

    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.nvimtree")
    end,
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.lualine")
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("config.telescope")
    end,
  },

  -- Comment.nvim
  {
    "numToStr/Comment.nvim",
    config = function()
      require("config.comment")
    end,
  },

  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("config.terminal")
    end,
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.bufferline")
    end,
  },
}
