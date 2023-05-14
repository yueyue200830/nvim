local ok, telescope = pcall(require, "telescope")
if not ok then
  vim.notify("init telescope error")
  return
end

telescope.setup({})
