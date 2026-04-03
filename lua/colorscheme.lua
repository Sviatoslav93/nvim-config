local default_scheme = "habamax"

local ok = pcall(vim.cmd.colorscheme, default_scheme)
if not ok then
  vim.notify(
    "Colorscheme '" .. default_scheme .. "' not found. Falling back to default.",
    vim.log.levels.WARN
  )
  vim.cmd.colorscheme("default")
end
