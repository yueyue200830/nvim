local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    -- theme
    { "navarasu/onedark.nvim", lazy = true },
    { "shaunsingh/nord.nvim", lazy = true },

    -- directory tree
    {
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("plugin-config/nvim-tree")
        end,
        cmd = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeFocus", "NvimTreeFindFileToggle" },
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    -- highlight
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("plugin-config/treesitter")
        end,
    },
    {
       "akinsho/bufferline.nvim",
       config = function()
           require("plugin-config/bufferline")
       end,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("plugin-config/lualine")
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lsp")
        end,
        -- lazy = true,
        dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("plugin-config/mason-lspconfig")
        end,
        cmd = { "LspInfo", "LspInstall", "LspUninstall"},
        -- lazy = true,
        dependencies = { "williamboman/mason.nvim" },
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("plugin-config/mason")
        end,
        cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
        -- lazy = true,
    },
    -- search
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("plugin-config/telescope")
        end,
        lazy = true,
        cmd = "Telescope",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "nvim-lua/plenary.nvim",
        lazy = true,
    },
    -- icons
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },
})

