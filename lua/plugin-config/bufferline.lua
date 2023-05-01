vim.opt.termguicolors = true

require("bufferline").setup({
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
