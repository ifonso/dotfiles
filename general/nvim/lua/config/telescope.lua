local telescope = require("telescope")
local actions = require("telescope.actions")
local previewers = require("telescope.previewers")
local sorters = require("telescope.sorters")

telescope.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_sorter = sorters.get_fuzzy_file,
    generic_sorter = sorters.get_generic_fuzzy_sorter,
    path_display = { "truncate" },
    file_ignore_patterns = { "node_modules" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" },
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    buffer_previewer_maker = previewers.buffer_previewer_maker,
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
  },
  extensions = {
  },
})

-- Atalhos
local builtin = require("telescope.builtin")
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>ff", builtin.find_files, opts)
keymap("n", "<leader>fa", function()
  builtin.find_files({ hidden = true, no_ignore = true })
end, opts)
keymap("n", "<leader>fb", builtin.buffers, opts)
keymap("n", "<leader>fw", builtin.live_grep, opts)
keymap("n", "<leader>fh", builtin.help_tags, opts)
keymap("n", "<leader>fo", builtin.oldfiles, opts)
keymap("n", "<leader>fz", builtin.current_buffer_fuzzy_find, opts)
