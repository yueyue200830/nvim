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
    event = 'CursorHold',
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
  -- lsp
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
  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("plugin-config/cmp")
    end,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("plugin-config/null-ls")
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
    -- lazy = true,
  },
  -- search
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("plugin-config/telescope")
    end,
    -- lazy = true,
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  -- git
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugin-config.gitsigns")
    end,
  },
  -- icons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
})

