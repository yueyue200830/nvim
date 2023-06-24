local ok, nvim_tree = pcall(require, "nvim-tree")
if not ok then
  vim.notify("init nvim_tree error")
  return
end

nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        -- { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
    custom = { "^.git$", ".vscode" },
  },
  git = {
    enable = true,
    ignore = false,
  },
})
