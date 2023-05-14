local ok, mason = pcall(require, "mason")
if not ok then
  vim.notify("init mason error")
  return
end

mason.setup()
