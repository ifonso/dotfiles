require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- nvimtree toggle on <leader>n instead of <C-n>
vim.keymap.del("n", "<C-n>")
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- j/k andam por linha visual (soft wrap); com count (ex: 5j) continuam pulando linhas reais
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "down (display line)" })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "up (display line)" })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "down (display line)" })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "up (display line)" })
map("i", "<Down>", "<C-o>gj", { desc = "down (display line)" })
map("i", "<Up>", "<C-o>gk", { desc = "up (display line)" })
