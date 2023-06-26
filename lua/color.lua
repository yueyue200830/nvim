local ok, onedark = pcall(require, "onedark")
if not ok then
  vim.notify("init onedark error")
  return
end

onedark.load()

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
