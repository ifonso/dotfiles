require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- nvimtree toggle on <leader>n instead of <C-n>
vim.keymap.del("n", "<C-n>")
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
