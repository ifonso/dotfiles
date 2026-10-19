local null_ls = require("null-ls")

local function find_venv(bufname)
  return vim.fs.find(".venv", { upward = true, type = "directory", path = vim.fs.dirname(bufname) })[1]
end

-- prefer the project's .venv mypy, fall back to the one in PATH; nil when neither exists
local function mypy_cmd(bufname)
  local venv = find_venv(bufname)
  if venv and vim.fn.executable(venv .. "/bin/mypy") == 1 then
    return venv .. "/bin/mypy"
  end
  if vim.fn.executable "mypy" == 1 then
    return "mypy"
  end
end

local opts = {
  sources = {
    null_ls.builtins.diagnostics.mypy.with({
      -- skip silently when mypy isn't installed (otherwise every run raises a blocking "Press ENTER" error)
      runtime_condition = function(params)
        return mypy_cmd(params.bufname) ~= nil
      end,
      dynamic_command = function(params, done)
        done(mypy_cmd(params.bufname))
      end,
      -- check against the project's .venv instead of mypy's own python
      extra_args = function(params)
        local venv = find_venv(params.bufname)
        return venv and { "--python-executable", venv .. "/bin/python" } or {}
      end,
    }),
  }
}
return opts
