local ok, comment = pcall(require, "Comment")
if not ok then
  vim.notify("init comment error")
  return
end

comment.setup({})
