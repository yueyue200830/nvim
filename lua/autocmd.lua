local autocmd = vim.api.nvim_create_autocmd

-- 不同文件类型配置不同的缩进，默认4个空格
autocmd('FileType', {
  pattern = 'lua',
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
