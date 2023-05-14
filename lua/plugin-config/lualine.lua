local ok, lualine = pcall(require, "lualine")
if not ok then
  vim.notify("init lualine error")
  return
end

lualine.setup({
  options = {
    theme = "onedark",
  },
})
