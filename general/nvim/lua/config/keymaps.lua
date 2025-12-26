local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Insert mode
keymap("i", "<C-b>", "<ESC>^i", opts)
keymap("i", "<C-e>", "<End>", opts)
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)

-- Normal mode
keymap("n", "<Esc>", "<cmd> noh <CR>", opts)
keymap("n", "<C-s>", "<cmd>w<CR>", opts)
keymap("n", "<C-c>", "<cmd>%y+<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

keymap("n", "<leader>rn", "<cmd>set rnu!<CR>", opts)
keymap("n", "<leader>b", "<cmd>enew<CR>", opts)

-- wrapped lines navigation
keymap("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, silent = true })
keymap("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, silent = true })
keymap("n", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, silent = true })
keymap("n", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, silent = true })

-- Visual mode
keymap("v", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, silent = true })
keymap("v", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, silent = true })
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "<leader>y", [["+y]], opts)

-- Visual block mode
keymap("x", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, silent = true })
keymap("x", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, silent = true })
keymap("x", "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { silent = true })

-- Terminal mode
keymap("t", "<C-x>", "<C-\\><C-N>", opts)

-- Nvim tree
keymap("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", opts)

-- Comment.nvim
-- Toggle comentário na linha atual
keymap("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, opts)

-- Toggle comentário na seleção visual
keymap("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- Bufferline
-- navegação entre buffers estilo tab
keymap("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<S-tab>", "<cmd>BufferLineCyclePrev<CR>", opts)

-- fechar buffer atual
keymap("n", "<leader>x", "<cmd>bdelete<CR>", opts)
