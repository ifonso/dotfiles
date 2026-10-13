local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.diagnostics.mypy.with({
      -- check against the project's .venv instead of mypy's own python
      extra_args = function(params)
        local venv = vim.fs.find(".venv", { upward = true, type = "directory", path = vim.fs.dirname(params.bufname) })[1]
        return venv and { "--python-executable", venv .. "/bin/python" } or {}
      end,
    }),
  }
}
return opts
