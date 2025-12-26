local cmp = require("cmp")
local luasnip = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

vim.api.nvim_set_hl(0, "CmpNormal", { link = "Pmenu" }) -- usa o mesmo fundo que o Pmenu
vim.api.nvim_set_hl(0, "CmpBorder", { link = "FloatBorder" }) -- usa a borda padrão

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = {
      border = "rounded",
      winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:Visual,Search:None",
    },
    documentation = {
      border = "rounded",
      winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder",
    },
  },
  formatting = {
    format = function(entry, vim_item)
      -- Opcional: ícones ou menus bonitos
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snip]",
      })[entry.source.name]
      return vim_item
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
})
