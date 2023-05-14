local ok, bufferline = pcall(require, "bufferline")
if not ok then
  vim.notify("init bufferline error")
  return
end

vim.opt.termguicolors = true

bufferline.setup({
  options = {
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "", -- 顶部文字
        text_align = "left",
        separator = true,
      },
    },
  },
})
