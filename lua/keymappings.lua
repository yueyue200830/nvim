vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "<leader>q", ":q<CR>", opt)

-- Switch Window
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-j>", "<C-w>j", opt)

-- Resize the Window
map("n", "<C-Up>", ":resize +2<CR>", opt)
map("n", "<C-Down>", ":resize -2<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- Move block up and down in visual mode
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opt)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opt)

-- 不复制选中的文字，放入剪贴板_中
map("x", "<leader>p", '"_dP', opt)
map("n", "<leader>d", '"_d', opt)
map("n", "<leader>d", '"_d', opt)

-- 与系统剪贴板交互
map("n", "<leader>y", '"+y', opt)
map("v", "<leader>y", '"+y', opt)
map("n", "<leader>Y", '"+Y', opt)
map("n", "<leader>p", '"+p', opt)

-- nvim tree
map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)

-- bufferline
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>x", ":Bdelete<CR>", opt) -- delete current buffer

-- Telescope
map("n", "<leader>ff", ":Telescope find_files <CR>", opt)
map("n", "<leader>fg", ":Telescope live_grep <CR>", opt)
map("n", "<leader>fb", ":Telescope buffers <CR>", opt)
map("n", "<leader>fh", ":Telescope help_tags <CR>", opt)

-- gitsign
map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", opt)
map("v", "<leader>hs", ":Gitsigns stage_hunk<CR>", opt)
map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", opt)
map("v", "<leader>hr", ":Gitsigns reset_hunk<CR>", opt)
map("n", "<leader>hS", ":Gitsigns stage_buffer<CR>", opt)
map("n", "<leader>hd", ":Gitsigns diffthis<CR>", opt)
map("n", "<leader>tg", ":lua _LAZYGIT_TOGGLE()<CR>", opt)

-- comment use "ctrl + /"
map("n", "<C-_>", ":lua require('Comment.api').toggle.linewise.current()<CR>", opt)
map("v", "<C-_>", ":lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opt)

-- lsp
map("n", "<leader>lf", ":lua vim.lsp.buf.format{async=true}<CR>", opt) -- format file
