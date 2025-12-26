require("toggleterm").setup({
  size = 15,
  open_mapping = [[<A-i>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  close_on_exit = true,
})

-- Atalhos
local Terminal = require("toggleterm.terminal").Terminal

-- horizontal
vim.keymap.set({ "n", "t" }, "<A-h>", function()
  Terminal:new({ direction = "horizontal" }):toggle()
end, { noremap = true, silent = true })

-- vertical
vim.keymap.set({ "n", "t" }, "<A-v>", function()
  Terminal:new({ direction = "vertical" }):toggle()
end, { noremap = true, silent = true })

-- novo horizontal
vim.keymap.set("n", "<leader>h", function()
  Terminal:new({ direction = "horizontal" }):open()
end, { noremap = true, silent = true })

-- novo vertical
vim.keymap.set("n", "<leader>v", function()
  Terminal:new({ direction = "vertical" }):open()
end, { noremap = true, silent = true })
