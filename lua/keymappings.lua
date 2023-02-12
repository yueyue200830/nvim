vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<leader>m', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>q', ':q<CR>', opt)

-- 不复制选中的文字，放入剪贴板_中
map("x", "<leader>p", "\"_dP", opt)
map("n", "<leader>d", "\"_d", opt)
map("n", "<leader>d", "\"_d", opt)

-- 与系统剪贴板交互
map("n", "<leader>y", "\"+y", opt)
map("v", "<leader>y", "\"+y", opt)
map("n", "<leader>Y", "\"+Y", opt)
map("n", "<leader>p", "\"+p", opt)

