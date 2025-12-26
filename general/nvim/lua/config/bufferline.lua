require("bufferline").setup({
  options = {
    mode = "buffers",
    separator_style = "thin",
    diagnostics = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    always_show_bufferline = true,
    enforce_regular_tabs = true,

    -- remove o offset para o NvimTree (bufferline vai ocupar linha inteira)
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        padding = 0,
        separator = false,
      },
    },
  },
})

